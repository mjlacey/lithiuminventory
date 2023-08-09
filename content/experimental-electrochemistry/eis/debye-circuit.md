+++
archetype = "contentpage"
title = "Debye Circuit"
weight = 7
draft = false
tags = ["EIS", "ECM", "Constant phase element", "Debye circuit", "Polymer electrolyte", "Analysis", "App"]
date = "2023-03-28"
author = "Matthew Lacey"
+++

{{% notice style="green" title="Overview" icon="eye" %}}

The Debye circuit is a common model used for determining ionic conductivity in polymer electrolytes. However, it can occasionally cause confusion and misinterpretation of results as the visibility of some processes in the impedance spectrum can depend on the material properties and experimental conditions. We'll take a look at why this might be on this page.

{{% /notice %}}

The Debye circuit is often used to interpret the impedance spectra of polymer electrolyte films sandwiched between blocking electrodes (i.e., electrodes that don’t undergo any reaction themselves), such as steel, or gold. This is a common method for calculating ionic conductivity of these materials. The circuit looks like this:

![Debye circuit](/images/experimental-electrochemistry/eis/ec-debye.svg?height=120px)

where R<sub>i</sub> is the ionic resistance, C<sub>dl</sub> is the double layer capacitance (represented by a [constant phase element](/experimental-electrochemistry/eis/constant-phase-element)), and C<sub>d</sub> is the dielectric capacitance.

It is important to account for the dielectric capacitance when making these measurements, because of the small inter-electrode distance (giving a higher dielectric capacitance) and a much higher ionic resistance of a polymer electrolyte than a liquid electrolyte (often 3 orders of magnitude higher, or more).

You should now start to see how the relaxation frequency associated with the semicircle that arises from the parallel R<sub>i</sub>-C<sub>d</sub> combination might well appear in the high frequency (1 kHz – 1 MHz) part of an impedance measurement, where it would normally be well outside the measurable range if the electrolyte was a more conductive liquid. Failure to account for this can lead the experimentalist to mistakenly assign the ionic resistance to the highest-frequency intercept of the real axis and the lower frequency resistance to some unknown charge transfer resistance (it does happen, I’m afraid).

## Visualisation

We can simulate the response of the Debye circuit for a typical polymer electrolyte between two blocking electrodes. Instead of directly using R and C values, we can calculate them from typical values of thickness, conductivity, and dielectric constant. If we say for example that we have a thickness {{% math %}}$l${{% /math %}} = 300 µm (thick, but typical for a lab experiment), dielectric constant {{% math %}}$\varepsilon_r${{% /math %}} = 10, and we allow the conductivity to vary between 1 and 0.001 mS cm<sup>-1</sup> with a fixed non-ideal double layer capacitance of ~10 µF cm<sup>-2</sup>, we can expect the resulting Nyquist plots in the range 1 Hz - 1 MHz to look something like the below:

![Animated Nyquist plot for the Debye circuit](/images/experimental-electrochemistry/eis/ec-debye-animated.gif?width=450px)

As the conductivity decreases, the resistance R increases, increasing the time constant R-C<sub>d</sub>. It can be seen that that until the conductivity is below 0.02 mS cm<sup>-1</sup>, the semicircle associated with R-C<sub>d</sub> is hardly visible as the relaxation frequency is well outside the measurement range. This hopefully shows more clearly why this phenomenon is rarely spotted away from measurements on poorly conductive samples. Under these conditions, the value of the capacitor C<sub>d</sub> is ~4.4 × 10<sup>-11</sup> F cm<sup>-1</sup>, which is over five orders of magnitude lower than the double layer capacitance and thus easily distinguished in an equivalent circuit fitting.

Some typical conductivities of different materials as a guide: polymer electrolyte: 10<sup>-6</sup> S cm<sup>-1</sup>; Li-ion battery electrolyte: 4 x 10<sup>-3</sup> S cm<sup>-1</sup>; aqueous electrolyte: 10<sup>-1</sup> S cm<sup>-1</sup>.