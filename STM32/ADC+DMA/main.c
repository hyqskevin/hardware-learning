
#include "stm32f10x_adc.h"
#include "stm32f10x_dma.h"
#include <stdio.h>

#define ADC1_DR_Address    ((uint32_t)0x4001244C)	 //ADC数据寄存器的基地址
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)

USART_InitTypeDef USART_InitStructure;		  //串口、ADC、DMA声明

ADC_InitTypeDef ADC_InitStructure;
DMA_InitTypeDef DMA_InitStructure;

__IO uint16_t ADCConvertedValue; // 注：ADC为12位模数转换器，只有ADCConvertedValue的低12位有效

void ADC_GPIO_Configuration(void)						  //ADC配置函数
{
  GPIO_InitTypeDef GPIO_InitStructure;
  //PB1 作为模拟通道输入引脚                         
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;			     //管脚1
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;			 //输入模式
  GPIO_Init(GPIOB, &GPIO_InitStructure);				 //GPIO组
}

static void Delay_ARMJISHU(__IO uint32_t nCount)
{
  for (; nCount != 0; nCount--);
}

void STM32_Shenzhou_COMInit(USART_InitTypeDef* USART_InitStruct)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);

  /* Enable UART clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE); 

  /* Configure USART Tx as alternate function push-pull */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  /* Configure USART Rx as input floating */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
 
  USART_Init(USART1, USART_InitStruct);	/* USART configuration */
  USART_Cmd(USART1, ENABLE);  /* Enable USART */
}

int main(void)
{
  u16 ADCConvertedValueLocal, Precent = 0, Voltage = 0;
  
  /* USARTx configured as follow:
        - BaudRate = 115200 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Hardware flow control disabled (RTS and CTS signals)
        - Receive and transmit enabled   */
  USART_InitStructure.USART_BaudRate = 115200;										  //串口初始化定义
  USART_InitStructure.USART_WordLength = USART_WordLength_8b;
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  USART_InitStructure.USART_Parity = USART_Parity_No;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

  STM32_Shenzhou_COMInit(&USART_InitStructure);				    //使用COM1
  
  /* 使能DMA时钟 */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);	

  /* 使能ADC和GPIOC时钟*/
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 | RCC_APB2Periph_GPIOC, ENABLE);
  
  /* DMA1 channel1 configuration ----------------------------------------------*/
  DMA_DeInit(DMA1_Channel1);		  //开启DMA1的第一通道
  DMA_InitStructure.DMA_PeripheralBaseAddr = ADC1_DR_Address;		  //DMA对应的外设基地址
  DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)&ADCConvertedValue;   //内存存储基地址
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;				  //DMA的转换模式为SRC模式，由外设搬移到内存
  DMA_InitStructure.DMA_BufferSize = 1;		   //DMA缓存大小，1个
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;	//接收一次数据后，设备地址禁止后移
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Disable;	//关闭接收一次数据后，目标内存地址后移
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;  //定义外设数据宽度为16位
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;  //DMA搬移数据尺寸，HalfWord就是为16位
  DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;   //转换模式，循环缓存模式。
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;	//DMA优先级高
  DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;		  //M2M模式禁用
  DMA_Init(DMA1_Channel1, &DMA_InitStructure);          
  
  /* Enable DMA1 channel1 */
  DMA_Cmd(DMA1_Channel1, ENABLE);
  
  /* ADC1 configuration ------------------------------------------------------*/
  ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;		//独立的转换模式
  ADC_InitStructure.ADC_ScanConvMode = ENABLE;		  //开启扫描模式
  ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;   //开启连续转换模式
  ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;	//ADC外部开关，关闭状态
  ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;   //对齐方式,ADC为12位中，右对齐方式
  ADC_InitStructure.ADC_NbrOfChannel = 1;	 //开启通道数，1个
  ADC_Init(ADC1, &ADC_InitStructure);

  /* ADC通道组， 第9个通道 采样顺序1，转换时间  */ 
  ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 1, ADC_SampleTime_55Cycles5);

  /* ADC命令，使能 */
  ADC_DMACmd(ADC1, ENABLE);	 
  
  /* Enable ADC1 */
  ADC_Cmd(ADC1, ENABLE);  //开启ADC1

  /* Enable ADC1 reset calibaration register */   
  ADC_ResetCalibration(ADC1);	  //重新校准
  /* Check the end of ADC1 reset calibration register */
  while(ADC_GetResetCalibrationStatus(ADC1));  //等待重新校准完成

  /* Start ADC1 calibaration */
  ADC_StartCalibration(ADC1);		//开始校准
  /* Check the end of ADC1 calibration */
  while(ADC_GetCalibrationStatus(ADC1));	   //等待校准完成
     
  /* Start ADC1 Software Conversion */ 
  ADC_SoftwareStartConvCmd(ADC1, ENABLE);	//连续转换开始，ADC通过DMA方式不断的更新RAM区。

  while (1)
  {
    ADCConvertedValueLocal = ADCConvertedValue;
    Precent = (ADCConvertedValueLocal*100/0x1000);	//算出百分比
    Voltage = Precent*33;						  //3.3V的电平，计算等效电平

    printf("\r\n\n\n ARMJISHU.COM ADCConvertedValue is 0x%X, Precent is %d%%, Voltage is %d.%d%dV", 	 //将计算的进行打印
    ADCConvertedValueLocal, Precent, Voltage/1000, (Voltage%1000)/100, (Voltage%100)/10);
    Delay_ARMJISHU(8000000);
  }
}


PUTCHAR_PROTOTYPE
{
  USART_SendData(USART1, (uint8_t) ch);		  //发送一字节数据

  /* Loop until the end of transmission */
  while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET)
  {}				//等待发送完成

  return ch;
}

