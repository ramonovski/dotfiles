#!/bin/sh

# Deshabilitar acceleracion
xinput set-prop 'Microsoft Microsoft 5-Button Mouse with IntelliEye(TM)' 'Device Accel Profile' -1

# Establecer la sensibilidad
xinput set-prop 'Microsoft Microsoft 5-Button Mouse with IntelliEye(TM)' 'Device Accel Constant Deceleration' 2

# Establecer el tiempo de respuesta incrementando los Hz
# Agrepar a /etc/modules
# -r usbhid
# usbhid mousepoll=1
#
# Y probar con
# cat /sys/module/usbhid/parameters/mousepoll
#
# Donde:
# 1 = 1000hz
# 2 = 500hz
 
