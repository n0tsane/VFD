# Variable Frequency Drive
A variable frequency drive has been modelled in Simulink. The system uses a thyristor-controlled 6-pulse converter, which converts the 220V (line-to-line), 50Hz supply into DC voltage. It then uses a PWM-controlled three-phase voltage source inverter to convert the DC voltage into output voltage of desired frequency. An additional buck converter has been used in between, to change the DC voltage level.\
\
![VFD](/Images/VFD.png)
\
\
The details of the systems are as follows:

## 6-pulse Converter
1. The converter uses 6 thyristors fired at a phase difference of 30° (firing angle is 0°) to convert the input 50Hz voltage into DC output.
2. The gate-triggering signals for each thyristor has been generated using the _Pulse Generator_ block in Simulink, with a frequency of 50Hz.\
\
![6-pulse converter](/Images/6-pulse_Converter.png)

## Buck Converter
A PWM-controlled buck converter has been used to change the desired dc voltage level. 

### PWM Control
The PWM signals have been generated using the _PWM_ block in Simulink, with specified duty cycle. The switching frequency is set to 50Hz.\
\
![PWM Control](/Images/Buck_converter_PWM_control.png)

### LC filter 
The values of inductance L and filter capacitance C have been calculated using the formulae:
>$`L = \frac{1-d}{2f}`$\
>\
>$`C = \frac{1-d}{8L(\frac{\Delta V}{V})f^{2}}`$ 

The value of L calculated using the formula is the minimum inductance required. The actual inductance use has been taken as $`L + 1.2H`$.
\

## Three-phase VSI
The VSI uses 6 switches controlled using sinusoidal PWM signals, having a frequency equal to the desired output frequency.\
\
![VSI](/Images/Three-phase_VSI.png)

## Output
### Converter output

![Converter output](/Images/Converter_Output_waveform.png)

### Output with frequency of 40Hz:
> Buck converter output

![dc 40Hz](/Images/DC_40Hz.png)

> VSI Output (only one phase is shown)

![Output](/Images/Output_40Hz_1_phase.png)

### Output with frequency of 33Hz:
> Buck converter output

![dc 33Hz](/Images/DC_33Hz.png)

> VSI Output (only one phase is shown)

![Output](/Images/Output_33Hz_1_phase.png)

> VSI Output (all three phases shown)

![3-ph 33Hz](/Images/Output_33_Hz.png)

