import RPi.GPIO as GPIO

# to use Raspberry Pi board pin numbers
GPIO.setmode(GPIO.BOARD)

# set up GPIO output channel
GPIO.setup(11, GPIO.OUT)

# set pin 11 LOW
GPIO.output(11,GPIO.LOW)

#GPIO.cleanup() 
