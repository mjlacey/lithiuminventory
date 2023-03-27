+++
archetype = "contentpage"
title = "6. The Randles Circuit"
weight = 6
draft = false
+++

{{% notice style="info" %}}
This content has been transferred from lacey.se and is not updated for this site yet.
{{% /notice %}}

{{% notice style="green" title="Overview" icon="eye" %}}

The Randles circuit is the probably the most recognisable equivalent circuit model in the world of electrochemistry and electrochemical impedance spectroscopy. We'll look at what processes it models and introduce a web app for simulating the impedance response of the circuit.

{{% /notice %}}

The Randles circuit, given below, is a model for a semi-infinite diffusion-controlled faradaic reaction to a planar electrode.

![Randles circuit](/images/experimental-electrochemistry/eis/ec-randles.svg?height=120px)

That's a lot of technical terms, I know. But the Randles circuit has plenty of significance to real electrochemical reactions, and if you’ve read the previous pages in this section you should now be familiar with all of the elements.

A simple model for an electrode immersed in an electrolyte is simply the series combination of the ionic resistance, R<sub>i</sub>, with the double layer capacitance, C<sub>dl</sub>. If a faradaic reaction is taking place, of the sort:

```math
$$\text{O} + \text{e}^- \rightleftharpoons \text{R} $$
```

then that reaction is occurring in parallel with the charging of the double layer – so the charge transfer resistance, R<sub>ct</sub>, associated with the faradaic reaction is in parallel with C<sub>dl</sub>.

The key assumption is that the rate of the faradaic reaction is controlled by diffusion of the reactants to the electrode surface. The diffusional resistance element (the Warburg impedance, W), is therefore **in series** with R<sub>ct</sub>.

That's all there is to it, and you will see impedance responses with this sort of shape in all manner of electrochemical systems, although often with multiple semicircles and other overlapping processes.

## Web app for simulating the Randles circuit

[This web app](http://lacey.se:3838/eis/randles") (hosted at lacey.se) lets you create a Nyquist plot for a simulated Randles circuit, based on specified values for the different components. C<sub>dl</sub> is modelled using a constant phase element, so you can see the effect of changing the phase angle. Also shown in the generated plots are blue lines which represent only the R-RC and R-W sub-elements of the circuit, to give a better impression as to how they combine. A screenshot of the app is below.

![Randles circuit simulation app](/images/experimental-electrochemistry/eis/randles-app.png "Randles circuit simulation app")