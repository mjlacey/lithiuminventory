+++
archetype = "contentpage"
title = "Diffusion Impedance"
weight = 5
draft = false
tags = ["EIS", "ECM", "Warburg", "Diffusion", "Mass transport"]
+++

<div style="text-align: right">
{{% badge style="transparent" icon="pen" %}}Matthew Lacey{{% /badge %}}
{{% badge style="blue" icon="calendar" %}}28 Mar 2023{{% /badge %}}
</div>

{{% notice style="green" title="Overview" icon="eye" %}}

Mass transport processes, such as diffusion, migration and convection, are a key aspect of electrochemical systems. In this subsection, we will look at fundamental models for the effect of diffusion processes on impedance. As with the CPE, we invent some new circuit elements to describe these, but these can be approximated using the familiar resistors and capacitors, as we will see.

{{% /notice %}}

## Semi-infinite diffusion

The simplest and most common circuit element for modelling diffusion behaviour is the **Warburg impedance** or Warburg element, which models **semi-infinite linear diffusion** – that is, diffusion in one dimension which is only bounded by a large planar electrode on one side.

![Warburg element](/images/experimental-electrochemistry/eis/ec-w.svg?height=40px)

The equation for this element is relatively simple:

```math
$$\pmb{Z}_W = \sigma \omega^{-1/2} - j \sigma \omega^{-1/2}$$
```

where {{% math %}}$\sigma${{% /math %}} is the **Warburg coefficient**, with units of Ω s<sup>-1/2</sup> – we'll come back to this shortly. In the Nyquist plot, the Warburg impedance gives a straight line with a phase of 45°, which is very recognisable in EIS. If you spot a 45° line in the Nyquist plot, it is usually associated with diffusion. The below plot shows the Nyquist plot for a Warburg element with {{% math %}}$\sigma${{% /math %}} of 10 Ω s<sup>-1/2</sup> in the frequency range 10 kHz - 10 Hz.

![Nyquist plot for a Warburg element](/images/experimental-electrochemistry/eis/nyquist-w.png?width=450px "Nyquist plot for a Warburg")

And if you’re looking at this thinking that this line look very much like a [constant phase element](/science/eis/constant-phase-element) but with a phase angle of 45°, then you’d be right – mathematically they are very much the same. In fact, some popular impedance analysis softwares do not actually provide a semi-infinite Warburg element, so a convenient alternative for this is a CPE element with n fixed at 0.5. This gives slightly different numbers back when fitting – if you use a CPE, you will get back the Q<sub>0</sub> value, rather than the Warburg coefficient {{% math %}}$\sigma${{% /math %}}. The two values are related though, by the equation:

```math
$$\sigma = \frac{1}{\sqrt{2} \cdot Q_0} $$
```

But what does {{% math %}}$\sigma${{% /math %}} actually mean? This is somewhat more complicated, but if you consider the case where you have a soluble redox couple in solution, with a nice reversible electrochemical reaction like:

```math
$$\text{O + n e}^- \rightleftharpoons \text{ R} $$
```

then {{% math %}}$\sigma${{% /math %}} is related to the diffusion coefficients and concentrations of those species:

```math
$$\sigma = \frac{RT}{n^2 F^2 A \sqrt{2}}\left(\frac{1}{D^{1/2}_O c^\infty_O} + \frac{1}{D^{1/2}_R c^\infty_R}\right) $$
```

here, in addition to the usual constants, {{% math %}}$D_O${{% /math %}} and {{% math %}}$D_R${{% /math %}} are the diffusion coefficients and {{% math %}}$c^\infty_O${{% /math %}} and {{% math %}}$c^\infty_R${{% /math %}} are the bulk concentrations for the species O and R respectively.

## The transmission line

Conventional "[Fickian](https://en.wikipedia.org/wiki/Fick%27s_laws_of_diffusion)" diffusion is not the only process which gives rise to this type of impedance in electrochemical systems. In batteries, the porosity of electrodes also gives rise to a similarly characteristic 45° line in the Nyquist plot.

This was described in detail by [de Levie](http://dx.doi.org/10.1016/0013-4686(63)80042-0), who proposed the **transmission line** model for an electrode with cylindrical pores filled with electrolyte:

![Transmission line](/images/experimental-electrochemistry/eis/ec-transline.svg?height=100px)

Consider the two parallel "rails" as being the electronic resistance in the electrode material itself and the ionic resistance in the electrolyte respectively. The capacitors represent the double layer capacitance.

This equivalent circuit, when infinitely long, gives an impedance response which is identical to the Warburg impedance above. Practically, however, porous electrodes have a finite length, and so show a 45° line only in a certain frequency range. The impedance response due to finite diffusion is discussed below.

A final point on the transmission line: if the transmission line shows the same response as Fickian diffusion, can the case of a porous electrode be considered diffusion as well? In a sense, yes. The movement of ions through the pores is coupled to the movement of electrons through the pore walls. This is an example of *[ambipolar diffusion](https://en.wikipedia.org/wiki/Ambipolar_diffusion)*.


## Finite diffusion

Often in the "classic" electrochemical setups, diffusion often appears semi-infinite because the timescale of the experiment is not long enough for the system to reach a steady state. However, in many real systems and in some standard experiments, diffusion is either naturally, or by design, limited. This gives rise to **finite** diffusion behaviour, which shows a different response than the standard Warburg impedance.

There are two important equivalent circuit elements for finite diffusion. They are the **finite length Warburg (FLW)** and the **finite space Warburg (FSW)**, sometimes called the "short" and "open" Warburg elements respectively. Their responses in a Nyquist plot look like this, with parameters Z<sub>0</sub> = 10 Ω and {{% math %}}$\tau${{% /math %}} = 0.075 s (more on these parameters shortly) in the frequency range 10 kHz to 10 Hz:

![Nyquist plot for the FSW and FLW elements](/images/experimental-electrochemistry/eis/nyquist-fw.png?width=300px "Nyquist plot for the FSW and FLW elements")

Let's look at the FLW first. Mathematically, it can be written as:

```math
$$\pmb{Z}_\text{FLW} = Z_0 \left(j \omega \tau \right)^{-1/2}  \tanh \left(j \omega \tau \right)^{1/2}$$
```

The two parameters {{% math %}}$Z_0${{% /math %}} and {{% math %}}$\tau${{% /math %}} reflect the properties of the system or the process giving rise to the FLW behaviour. The impedance of the FLW tends to the value of {{% math %}}$Z_0${{% /math %}} at low frequency. At high frequencies, the response is almost exactly that of the Warburg impedance. The shape of the FLW in the Nyquist plot therefore looks like a 45° line at higher frequencies, and transitions into a semi-circle shape at low frequencies. It can be thought of as a Warburg being "shorted" by a resistor - although a parallel W-R circuit will not give the same response. It can also be modelled by a finite length transmission line which is short-circuited at one end. For this reason it is sometimes also known as a "short Warburg".

![Shorted transmission line](/images/experimental-electrochemistry/eis/ec-shorttransline.svg?height=100px)

This response is typically associated with diffusion (or more generally mass transport) *through* a layer with a finite length. A classic example of this is the response of the **[rotating disk electrode](https://en.wikipedia.org/wiki/Rotating_disk_electrode)** - the point of which being to reduce the distance from the electrode to the bulk by controlling *convection*, rather than diffusion in this case.

The FSW has a rather similar definition:

```math
$$\pmb{Z}_\text{FSW} = Z_0 \left(j \omega \tau \right)^{-1/2} \coth \left(j \omega \tau \right)^{1/2}$$
```

In this case, the response tends towards capacitive-like behaviour at low frequencies, where {{% math %}}$Z'(\omega = \infty) = Z_0/3${{% /math %}}. This response is typically associated with diffusion where one of the boundaries is blocking, such as in a porous electrode, as discussed previously on this page. This response is also associated with the diffusion of ions within a storage electrode, such as in lithium-ion batteries. This element can also be modelled as a finite length transmission line which is "open" at one end, and for this reason is sometimes also known as an "open Warburg".

{{% notice style="warning" title="Mind the definitions!" %}}

You can find a number of different definitions of these finite elements and it's easy to get confused. One source of confusion can be from defining these elements in terms of admittance. For example, the FLW is frequently defined like this:

```math
$$\pmb{Y}_\text{FLW} = Y_0 (j \omega)^{-1/2} \coth \left[B (j \omega)^{-1/2}\right] $$
```

You might have noticed that this definition contains {{% math %}}$\coth${{% /math %}} instead of {{% math %}}$\tanh${{% /math %}}. In this case it's important to remember that:

```math
$$\coth(x) = \frac{1}{\tanh(x)}$$
```

{{% /notice %}}