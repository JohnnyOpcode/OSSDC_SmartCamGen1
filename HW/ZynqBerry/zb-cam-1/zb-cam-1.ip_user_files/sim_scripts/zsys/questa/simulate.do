onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib zsys_opt

do {wave.do}

view wave
view structure
view signals

do {zsys.udo}

run -all

quit -force
