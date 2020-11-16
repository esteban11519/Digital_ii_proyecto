# Modulo UART_Bluetooth
![Modulo fisico](https://user-images.githubusercontent.com/43111878/99134806-58aad680-25ed-11eb-8faf-2062f99f2f73.PNG)

En el diseño de esta UART para bluetooth se dividió el projecto en 4 modulos así: un modulo TOP, un modulo para recepción (RX), un modulo para transmisión (TX) y un generador de baudios.

El modulo de recepción (RX) fué implementado para recibir informaciòn de forma inalambrica en la FPGA, atraves del modulo Hc-06. El funcionamiento de este modulo se encuentra detallada en el codigo y la prueba de hizo mediante el envio de cadenas de bits desde un celular que eran mostradas atraves de la FPGA con el encendido y apagado de LED's.
