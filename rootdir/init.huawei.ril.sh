#!/system/bin/sh

#operator_alpha=`getprop gsm.sim.operator.alpha`

#while [ "$operator_alpha" = "" ] do
#then
#   $operator_alpha=`getprop gsm.sim.operator.alpha`
#done

setprop rild.libpath "/system/lib/libril-qc-qmi-1.so"
restart ril-daemon

exit 0
