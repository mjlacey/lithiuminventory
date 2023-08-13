+++
archetype = "contentpage"
title = "MacMullin number measurement"
weight = 10
draft = false
tags = ["Electrolyte", "Separator", "MacMullin"]
author = "Marcel Drüschler"
date = "2023-08-05"
+++

The MacMullin number is an important quantity which describes the effect of a battery [separator](/materials/current/separator/) on the electrolyte solution in which it hosts. 

The MacMullin number, N<sub>M</sub>, tells you the factor by which the conductivity of an electrolyte-wetted separator foil is reduced compared to the conductivity of the “free” electrolyte solution. That is, if you have a MacMullin number of 10 and the bulk, or “free”, electrolyte solution has a conductivity of 10 mS/cm, the effective conductivity of the electrolyte-wetted separator is 1 mS/cm, or, reduced by a factor of 10 compared to the bulk electrolyte

The MacMullin number is influenced by three factors: the porosity, the tortuosity (which depends on pore size, pore size distribution, and inter-pore-connectivity), and the thermodynamics of the electrolyte-separator material interface. Depending on the selected physical model, there are various formulae you can find in the scientific literature linking the MacMullin number in particular to the porosity and tortuosity`[1]`. Typically, most of these expressions look like the following generalized relationship:

```math
$$N_M = \frac{\tau^n}{\varepsilon^m}$$
```

where {{% math %}}$\tau${{% /math %}} is the tortuosity and {{% math %}}$\varepsilon${{% /math %}} is the porosity of the separator.

## Experimental procedure

To experimentally determine the MacMullin number, [electrochemical impedance spectroscopy (EIS)](/experimental-electrochemistry/eis/) can be used in combination with an elegant, simple, and robust experimental approach: the so-called stacking method: The single steps of the method are as follows`[2,3]`:

1. Punch out multiple specimens of your separator material, at least 4 pieces.
2. Store the speciments in electrolyte solutions. Depending on the wettability, only a few minutes might be needed while in other cases several hours are required.
3. Put the wetted separator foil between two current collector electrodes, e.g. made of stainless steel 1.4404.
4. Record an impedance spectrum (potentiostatic mode; 1 MHz-1 kHz is usually sufficient, with an ac-voltage amplitude of 5-10 mV (rms)).
5. Put another wetted separator foil on top of the other one.
6. Record another impedance spectrum for the two specimens being placed on each other.
7. Repeat that procedure at least four times.

## Data analysis

You now have to evaluate the impedance data, which is typically done by equivalent circuit fitting. For an electrolyte-wetted separator foil, a model circuit consisting of a serial connection of an inductor I (cable contribution), a resistor R (ion migration through the electrolyte volume, but also contributions by cable and contact resistances), and a constant phase element CPE (= non-ideal capacitor; formation of an electrochemical double layer at the electrolyte-electrode interface) is often applicable. 

![Equivalent circuit model for the electrochemical cell used for MacMullin number determination](/images/experimental-electrochemistry/macmullin1.png?width=300px)

Plotting the R-values against the number of separator layers results in a straight line with the slope being identical with the resistance for ion transport per separator layer R<sub>ion</sub>.

![Nyquist plots for a typical MacMullin number measurement](/images/experimental-electrochemistry/macmullin2.png?width=450px)


![Resistance vs number of layers plot](/images/experimental-electrochemistry/macmullin3.png?width=450px)

Knowing the thickness d<sub>separator</sub> of the material and the contact area A<sub>contact</sub> between the separator material and the current collector electrode, the conductivity of the electrolyte-wetted separator material can now be calculated:

```math
$$\sigma_\text{separator} = \frac{1}{R_\text{ion}} \cdot \frac{d_\text{separator}}{A_\text{contact}}$$
```

In a final step, you now divide the conductivity of the “free” electrolyte solution by the conductivity of the electrolyte-wetted separator foil:

```math
$$N_M = \frac{\sigma_\text{electrolyte}}{\sigma_\text{separator + electrolyte}}$$
```

The result is the MacMullin number. Typcial values for Li-ion battery separator materials are 4 -- 20. 
Please note that the MacMullin number is only a “constant” for a fixed separator-electrolyte combination. Once the electrolyte is altered, the MacMullin number can also vary`[3]`. The reason is that the MacMullin number is not only a function of the materials porosity and tortuosity, but also of the thermodynamics of the electrolyte-separator material interface; that is, the surface energies. 

## Relationship to other metrics

One might now ask the question: Why do you typically not find the MacMullin number on the specification sheet of separator materials?

- You will find instead the Gurley number. The determination of the Gurley number is much simpler, faster, and cheaper, although the Gurley number only tells you something about the gas permeability of your separator material which is also related to the porosity and tortuosity, but which does not necessarily show a 1:1 correlation with the MacMullin number.
- The determination of the MacMullin number requires working with chemicals, and therefore needs trained persons and a well-equipped chemical laboratory.
- The determination of the MacMullin number requires relatively expensive measurement devices and test cells.
- The MacMullin number is a function of the selected electrolyte and there is no generally accepted reference system. You would have to repeat the measurement with several electrolyte systems. 

## Supporting literature

<small>

`[1]` M. J. Martínez, S. Shimpalee, J. W. Van Zee, Measurement of MacMullin Numbers for PEMFC Gas-Diffusion Media, J. Electrochem. Soc., 2009, 156 (1), B80-B85.

`[2]` R. Raccichini, L. Furness, J. W. Dibden, J. R. Owen, N. García-Araez, Impedance Characterization of the Transport Properties of Electrolytes Contained within Porous Electrodes and Separators Useful for Li-S Batteries, J. Electrochem. Soc., 2018, 165 (11), A2741-A2749.

`[3]` J. Landesfeind, J. Hattendorff, A. Ehrl, W. A. Wall, H. A. Gasteiger, Tortuosity Determination of Battery Electrodes and Separators by Impedance Spectroscopy, J. Electrochem. Soc., 2016, 163 (7), A1373-A1387.

</small>