+++
archetype = "contentpage"
title = "RC circuits"
weight = 2
draft = false
tags = ["EIS", "ECM", "RC circuit"]
+++

<div style="text-align: right">
{{% badge style="transparent" icon="pen" %}}Matthew Lacey{{% /badge %}}
{{% badge style="blue" icon="calendar" %}}15 Feb 2023{{% /badge %}}
</div>


{{% notice style="green" title="Overview" icon="eye" %}}

Now that we've introduced some of the maths behind impedance, and the plots we use to represent it, we can start to look at the mathematical definitions and the impedance response of two of the most basic electrical circuit components -- resistors and capacitors -- and combinations of them.

{{% /notice %}}

## Impedance of a resistor

![Resistor](/images/experimental-electrochemistry/eis/ec-r.svg?height=40px)

This is the simplest electrical circuit, and the easiest to understand. Resistors, as you surely know, obey Ohm’s law, so the current is always proportional to the voltage, there is no reactive part (i.e., phase shift) and so no dependence on frequency whatsoever. We can just write that down like this:

```math
$$\pmb{Z}_R = R \tag{1}$$
```

where R is the resistance. The Nyquist plot for a resistor then is very simple – it’s just a single point on the x-axis at any frequency. The below plot shows the Nyquist plot for a resistor with a resistance of 20 Ω.

![Nyquist plot for a resistor](/images/experimental-electrochemistry/eis/nyquist-r.png?width=450px "Nyquist plot for a resistor")

## Impedance of a capacitor

![Capacitor](/images/experimental-electrochemistry/eis/ec-c.svg?height=50px)

Capacitors have a purely **reactive** impedance. An ideal capacitor has zero resistance. When an alternating voltage is applied across a capacitor, the current **leads** the voltage (the phase is -90°), and the impedance is inversely proportional to the frequency. That is, the impedance increases with decreasing frequency. Consider applying a DC voltage across a capacitor – after a long enough time, the capacitor is fully charged and no more current flows. The impedance is effectively infinity. The equation describing a capacitor is:

```math
$$\pmb{Z}_C = \frac{1}{j \omega C} \tag{2}$$
```

where {{% math %}}$j${{% /math %}} is the imaginary unit, {{% math %}}$\omega = 2 \pi f${{% /math %}} and {{% math %}}$C${{% /math %}} is the capacitance.

he Nyquist plot for a capacitor therefore looks like a vertical line, where Z’ = 0 for all frequencies. The below plot shows the Nyquist plot for a capacitor with a capacitance of 1 mF, in the frequency range 1 kHz -- 10 Hz. The highest frequency points have the lowest impedance, with the impedance increasing as frequency decreases.

![Nyquist plot for a capacitor](/images/experimental-electrochemistry/eis/nyquist-c.png?width=300px "Nyquist plot for a capacitor")

Capacitances arise all over the place in electrochemical systems, pretty much anywhere you have an interface – most often from the capacitance of the [double layer](https://en.wikipedia.org/wiki/Double_layer_(interfacial)), but also dielectric capacitance, or at grain boundaries in solids, and so on.

This is all fairly straightforward so far, so now we’re going to consider combining some of these different circuits together.

## RC circuits

#### Series RC circuit

![Series RC circuit](/images/experimental-electrochemistry/eis/ec-src.svg?height=50px)

In series, the **impedances are additive**:

```math
$$\pmb{Z} = \sum_n \pmb{Z}_n \tag{3}$$
```

The impedance of the series RC circuit is therefore just the addition of the individual impedances of the resistor and the capacitor together:

```math
$$\pmb{Z} = \pmb{Z}_R + \pmb{Z}_C = R + \frac{1}{j \omega C} \tag{4}$$
```

The Nyquist plot for a series RC circuit (where R = 5 Ω, C = 1 mF, in the frequency range 1 kHz -- 10 Hz) is shown below. As you might expect, the real impedance Z’ is equal to the resistance of the resistor for all frequencies, and the imaginary part of the impedance follows the same behaviour as for the ideal capacitor.

![Nyquist plot for a series RC circuit](/images/experimental-electrochemistry/eis/nyquist-src.png?width=300px "Nyquist plot for a series RC circuit")

You can consider the series RC circuit as a simple model for things like a blocking interface – for example an inert electrode immersed in a conducting electrolyte – where R represents the ionic resistance of the electrolyte, and C represents the capacitance of the double layer on the electrode surface.

This also represents two electrodes in an electrolyte (i.e., a complete cell), because a series circuit with two capacitors (i.e., C-R-C) simplifies down to a single RC unit anyway, if you follow the equations above.

#### Parallel RC circuit

Now, let’s consider the parallel case.

![Parallel RC circuit](/images/experimental-electrochemistry/eis/ec-prc.svg?height=100px)

In parallel, the **admittances** (i.e., the reciprocals of the impedances) **are additive**:

```math
$$\pmb{Y} = \frac{1}{\pmb{Z}} = \sum_n \frac{1}{\pmb{Z}_n} \tag{5}$$
```

So then we can write the expression for the parallel RC circuit like so:

```math
$$\frac{1}{\pmb{Z}} = \frac{1}{R} + j \omega C \tag{6}$$
```

If we rearrange that equation for {{% math %}}$\pmb{Z}${{% /math %}} (by first multiplying all the terms by R) then we end up with:

```math
$$\pmb{Z} = \frac{R}{1 + j \omega RC} \tag{7}$$
```

From this equation you can see that at high frequency, i.e., {{% math %}}$\omega \rightarrow \infty${{% /math %}}, the lower term on the fraction goes to infinity, so the impedance tends towards zero; the ideal circuit behaves like the capacitor at infinite frequency – it has zero impedance. At low frequency, i.e., {{% math %}}$\omega \rightarrow 0${{% /math %}}, however, you can see that the bottom term becomes 1, so the total impedance of the circuit equals R – i.e., with a direct current, the circuit behaves like a resistor (this makes sense, right? Eventually with a direct current, the capacitor becomes fully charged and the current only goes through the resistor). The Nyquist plot for this circuit, then, is a semicircle, intercepting the real (Z’) axis at 0 and R. The below plot shows the Nyquist plot for a parallel RC circuit where R = 5 Ω, C = 1 mF, in the frequency range 1 kHz -- 1 Hz:

![Nyquist plot for a parallel RC circuit](/images/experimental-electrochemistry/eis/nyquist-prc.png?width=450px "Nyquist plot for a parallel RC circuit")

Semicircles in the Nyquist plot are very common in electrochemical impedance, and are usually associated with processes such as **charge transfer**, because at an electrode surface the transfer of charge happens in parallel with the charging of the double layer capacitance – hence the semicircle.

You’ll also note that I’ve marked the very top of the semicircle with *f\**. This is known as the relaxation frequency, and relates to the [RC time constant](https://en.wikipedia.org/wiki/RC_time_constant) of the circuit. From the previous equation, you will see that the peak of the semicircle occurs when {{% math %}}$\omega RC = 1${{% /math %}}. The time constant is then defined as follows:

```math
$$ \tau = \frac{1}{\omega} = \frac{1}{2 \pi f} = RC$$
```

This is an important concept in EIS, because it tells us something about the timescales on which different processes are occurring. This equation also allows you to calculate capacitances in these elements knowing only the resistance (from the diameter) and the relaxation frequency.

This is where the Bode plot comes in handy. The top of the semicircle simply appears as a peak in a plot of the imaginary part against the frequency, with log scaling:

![Bode plot for a parallel RC circuit](/images/experimental-electrochemistry/eis/bode-prc.png?width=450px "Bode plot for a parallel RC circuit")

Since I simulated the circuit with values of R = 5 Ω and C = 1 mF, you should be able to follow that:

```math
$$f^* = \frac{1}{2 \pi RC} = \frac{1}{2 \pi \times 5 \text{ } \Omega \times 10^{-3} \text{ F}} = 31.83 \text{ Hz}$$
```

and see on the Bode plot above that the peak is at around 32 Hz.

Another reason this is important is that the time constant (that is, the frequency dependence) of these elements of course affects the order in which they appear in the Nyquist plot. Elements with a smaller time constant (i.e., a higher relaxation frequency) will, naturally, appear at higher frequencies in the impedance spectrum. Of greater concern, however, is that elements with very similar or the same time constants will tend to overlap. I’ve included a Shiny app for simulating a circuit made up of two parallel RC units in series to show this. Have a go at changing the parameters, and see how they affect what the Nyquist plot looks like.