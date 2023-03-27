+++
archetype = "contentpage"
title = "4. Constant Phase Elements"
weight = 4
draft = false
+++

{{% notice style="green" title="Overview" icon="eye" %}}

So far, we’ve looked at the impedance response for some ideal resistors and capacitors and some simple combinations of them. Unfortunately, in electrochemical systems we often encounter processes which don’t have a “real” equivalent electrical component, so we have to invent some. One of the most common such elements is the constant phase element, or CPE.

{{% /notice %}}

One of the most common circuit elements for modelling non-ideal behaviour is the **constant phase element** (CPE, or sometimes Q). This is a common symbol for this circuit element:

![Constant phase element](/images/experimental-electrochemistry/eis/ec-q.svg?height=40px)

You might think that it looks like a wonky capacitor – and you’d be right, because this circuit element exists largely to describe capacitance as it appears in real electrochemical systems, because of things like rough surfaces, or a distribution of reaction rates. It is an imperfect capacitance – the effective capacitance and ‘real’ resistance are increasing as the frequency decreases. The origins of CPE behaviour are numerous and some of them quite complex, but there are good guides explaining this [elsewhere](http://consultrsr.net/resources/eis/cpe2.htm).

The mathematical definition is very similar to that of the capacitor as well:

```math
$$\pmb{Z}_Q = \frac{1}{Q_0 (j \omega)^n}$$
```

where n is the constant phase, {{% math %}}$(-90 \times n)${{% /math %}}°, and n is a number between 0 and 1. Be aware though – this is not the only possible definition of the constant phase element – it can also be defined by putting the Q<sub>0</sub> value inside the brackets.

So, what does the Nyquist plot look like? You might have guessed by now that the Nyquist plot for a CPE looks similar to a capacitor – a straight line, but with a phase of {{% math %}}$(-90 \times n)$°{{% /math %}}. The below plot shows the Nyquist plot for a CPE with a Q of 1 mS s<sup>n</sup>, where n = 0.85 (more on those units later), in the frequency range 1 kHz - 10 Hz.

![Nyquist plot for a constant phase element](/images/experimental-electrochemistry/eis/nyquist-q.png?width=300px "Nyquist plot for a constant phase element")

## R-CPE or RQ circuits

It should be fairly clear by now what the Nyquist plot of a series R-CPE element looks like, so I’ll only show the parallel case, the characteristic “depressed” semicircle. The below plot shows the Nyquist plot for a CPE with a Q of 1 mS s<sup>n</sup>, where n = 0.85, in parallel with a 5 Ω resistor, in the frequency range 10 kHz - 10 Hz.

![Parallel RQ circuit](/images/experimental-electrochemistry/eis/ec-prq.svg?height=100px)

![Nyquist plot for a parallel R-CPE circuit](/images/experimental-electrochemistry/eis/nyquist-prq.png?width=450px "Nyquist plot for a parallel R-CPE circuit")

The Bode plot for a parallel R-CPE circuit looks very similar to that of a parallel RC circuit, but with a subtle difference: on a log-log plot (i.e., log(-Z'') vs log _f_), the gradient of the straight line gives you the n value:

![Bode plot for a parallel RQ circuit](/images/experimental-electrochemistry/eis/bode-prq.png?width=450px "Bode plot for a parallel RQ circuit")

You may be able to see from the above plot that in the high frequency region (to the right of the peak) the gradient is -0.85, and in the low frequency region (to the left of the peak) the gradient is +0.85. Being able to estimate these values from Bode plots can be a useful technique to estimate parameters when performing equivalent circuit fitting, as we will see later on in this section.

## Can I calculate the real capacitance?

Q<sub>0</sub>, according to the mathematical definition of the CPE, has units of S s<sup>n</sup> (that’s siemens-seconds-to-the-power-n), which have no real physical meaning. However, it is possible to determine the actual capacitance behind the CPE when you have a parallel R-CPE circuit. Think about the units again – you should be able to see that:

```math
$$RQ_0 = \tau^n = (RC)^n$$
```

Rearranging this equation gives:

```math
$$C = \frac{(RQ)^{\frac{1}{n}}}{R}$$
```

This equation holds as long as the phase angle does not deviate too far from -90° (n > 0.75). I won’t go into this further, though – the [ConsultRSR webpages on EIS](http://consultrsr.net/resources/eis/cpecalc.htm) provide some useful reading on this point.