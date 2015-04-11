import RPi.GPIO as GPIO
import time

# to use Raspberry Pi board pin numbers
GPIO.setmode(GPIO.BOARD)

# set up GPIO output channel
GPIO.setup(11, GPIO.OUT)

# blink GPIO17 50 times
#for i in range(0,50):
#        blink(11)

GPIO.output(11,GPIO.HIGH)

#GPIO.cleanup() 
