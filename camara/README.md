# Instrucciones

En el archivo ~camara/sources/buffer_ram_dp.v pongan la *dirección absoluta* de imagen.men que se encuentra en ~camara\sources\, en la siguiente linea de código:

```verilog

8 parameter imageFILE = "... /camara/sources/imagen.men")

```

Asegúrense se cambiar los *backslash* en los que Windows proporciona las direcciones por *slash*.

