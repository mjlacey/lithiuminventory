+++
archetype = "contentpage"
title = "Debye Circuit"
weight = 7
draft = false
tags = ["EIS", "ECM", "Constant phase element", "Debye circuit", "Polymer electrolyte", "Analysis", "App"]
date = "2023-03-28"
author = "Matthew Lacey"
+++

{{% notice style="info" %}}
This content has been transferred from lacey.se and is not updated for this site yet.
{{% /notice %}}

The Debye circuit is often used to interpret the impedance spectra of polymer electrolyte films sandwiched between blocking electrodes (i.e., electrodes that don’t undergo any reaction themselves), such as steel, or gold. This is a common method for calculating ionic conductivity of these materials. The circuit looks like this:

![Debye circuit](/images/experimental-electrochemistry/eis/ec-debye.svg?height=120px)

where R<sub>i</sub> is the ionic resistance, C<sub>dl</sub> is the double layer capacitance (represented by a [constant phase element](/experimental-electrochemistry/eis/constant-phase-element)), and C<sub>d</sub> is the dielectric capacitance.

It is important to account for the dielectric capacitance when making these measurements, because of the small inter-electrode distance (giving a higher dielectric capacitance) and a much higher ionic resistance of a polymer electrolyte than a liquid electrolyte (often 3 orders of magnitude higher, or more).

You should now start to see how the relaxation frequency associated with the semicircle that arises from the parallel R<sub>i</sub>-C<sub>d</sub> combination might well appear in the high frequency (1 kHz – 1 MHz) part of an impedance measurement, where it would normally be well outside the measurable range if the electrolyte was a more conductive liquid. Failure to account for this can lead the experimentalist to mistakenly assign the ionic resistance to the highest-frequency intercept of the real axis (it does happen, I’m afraid).

## Web app for simulating the Debye circuit

[Follow this link to find a web app](http://lacey.se:3838/eis/debye) which allows you to simulate the impedance spectrum associated with this circuit. However, unlike the other apps included in this guide, the input values are physical parameters, such as the electrolyte conductivity, electrolyte thickness, and so on. The app will then calculate resistance and capacitance values from these, and plot the Nyquist plot. Have a go at changing some of the important values – electrolyte conductivity and thickness especially, but also the frequency range of the simulation. How much of the semicircle do you see? A screenshot of the web app is below.

![Debye circuit simulation app](/images/experimental-electrochemistry/eis/debye-app.png "Debye circuit simulation app")

Some typical conductivities as a guide: polymer electrolyte: 10<sup>-6</sup> S cm<sup>-1</sup>; Li-ion battery electrolyte: 4 x 10<sup>-3</sup> S cm<sup>-1</sup>; aqueous electrolyte: 10<sup>-1</sup> S cm<sup>-1</sup>.