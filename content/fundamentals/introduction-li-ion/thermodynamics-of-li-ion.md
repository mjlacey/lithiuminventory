+++
archetype = "contentpage"
title = "Thermodynamics of intercalation materials"
weight = 2
draft = false
author = "Matthew Lacey"
date = 2023-08-11
tags = ["Thermodynamics", "Cell voltage", "Li-ion", "Redox", "Lattice gas model", "Intercalation"]
+++

```math
$$
\def\plimsoll{{-\kern-4pt{\ominus}\kern-4pt-}}
$$
```
{{% notice style="green" title="Overview" icon="eye" %}}
On this page we'll take a look at the factors which determine electrode potential in intercalation electrode materials. We'll look at the chemical potentials of the ion and the electron, and the lattice gas model: a basic model which helps us understand the origin of the different potential/voltage profile "shapes" we see in practice.
{{% /notice %}}

## A (re-)introduction to intercalation materials

In our [introduction to the thermodynamics of batteries](/fundamentals/introduction-battery-chemistry/thermodynamics) we looked at the concept of the Nernst equation to understand what determines the [electrode potential](/more/definitions-conventions/#electrode-potential) and ultimately the cell voltage. Here, we will look in more detail at the more complex chemistry which is the foundation of most Li-ion batteries, a similarly fundamental model for understanding their electrode potential and how this helps us understand certain behaviours of these materials which we see in practice.

First, let's remind ourselves of the basic construction of a Li-ion battery and the materials used. A schematic of a basic Li-ion cell is shown below. The arrows indicate the movement of ions and electrons when the cell is *discharging*.

![Schematic of a Li-ion battery](/images/fundamentals/introduction-li-ion/li-ion-schematic.svg)

A Li-ion battery is constructed from two electrodes, each made of a material capable of reversibly hosting and releasing Li<sup>+</sup> ions; between them is a separator, which holds a (typically) liquid electrolyte which transfers those ions between the electrodes. The battery's ability to store electricity relies on a large difference in the energy associated with hosting the Li<sup>+</sup> ions in each electrode. That is, the removal of Li<sup>+</sup> ions from the negative electrode and their insertion into the positive electrode should be accompanied by a large release of energy.

## Chemical potential of lithium

Here, we will introduce the concept of **chemical potential**. The chemical potential is defined as the thermodynamic ability of a particle (e.g. an atom or ion) to perform physical work. It can be thought of as the energy required to introduce one more particle to the system, or alternatively the energy obtained by removing one particle from the system.

In an intercalation material, where the Li<sup>+</sup> ion is incorporated into the structure of a host material, the electrode potential {{% math %}}$E${{% /math %}} is determined by the chemical potential of the lithium *atoms* in the structure {{% math %}}$\mu_\text{Li}${{% /math %}}, which is in turn dependent on the chemical potential of the lithium *ions* and the chemical potential of the *electrons* in the structure. Mathematically, this is written as follows:

```math
$$E = \frac{\mu_\text{Li}}{F} = \frac{\mu_{\text{Li}^+} + \mu_{\text{e}^-}}{F} \tag{1}$$
```

{{% notice style="tip" title="Note the units!"%}}
The units of chemical potential are typically kJ mol<sup>-1</sup> and the units of Faraday's constant are C mol<sup>-1</sup>. Dividing a chemical potential by Faraday's constant, and accounting for a conversion of kJ to J, gives units for the potential of J C<sup>-1</sup>. One volt, 1 V = 1 J C<sup>-1</sup>.
{{% /notice %}}

## Chemical potential of the electron

The chemical potential of the electron is the Fermi level, and is always negative. 

![Diagram of Fermi levels and density of states for some positive electrode redox couples](/images/fundamentals/introduction-li-ion/fermilevel.svg?width=450px)

<small>Figure reproduced based on [Goodenough and Kim, 2010](https://doi.org/10.1021/cm901452z)</small>

## Chemical potential of the ion

Simple model for the chemical potential of the ion is the lattice gas model. This assumes that when ions are introduced into the structure they are distributed randomly with no short-range order.

![Lattice-gas model for an intercalation electrode](/images/fundamentals/introduction-li-ion/latticegas.svg)

In the lattice gas, the chemical potential of the ion changes with the fraction of occupied sites, {{% math %}}$x${{% /math %}}, according to the following expression:

```math
$$ \mu_{\text{Li}^+} = \mu_{\text{Li}^+}^\plimsoll + RT \ln \left[ \frac{x}{1-x} \right] + kx$$
```

This right hand side of this equation consists of three parts. {{% math %}}$\mu_{\text{Li}^+}^\plimsoll${{% /math %}} is the standard chemical potential for the Li<sup>+</sup> ion in the structure. This can be thought of as the "site energy", which is primarily determined by electrostatic interactions with the neighbouring ions in the structure. The term {{% math %}}$RT \ln \left[ \frac{x}{1-x} \right]${{% /math %}} describes the contribution of the entropy of the ions in the solid solution, which is dependent on the fraction of the available sites in the structure which are occupied. Finally, we have a parameter, {{% math %}}$k${{% /math %}}, for modelling non-ideal interactions between the ions in the structure. {{% math %}}$k${{% /math %}} is negative for attractive interactions.

We can plot this expression as a function of {{% math %}}$x${{% /math %}} and animate to show the effect of changing the non-ideal parameter {{% math %}}$k${{% /math %}}.

![Animated plot showing effect of increasing ion-ion interaction on entropy term](/images/fundamentals/introduction-li-ion/ion-ion-interaction.gif?width=550px)

## Does this model hold in practice?

Not in commercial materials no. But some Chevrel phases show behaviour which fit this model.

![](/images/fundamentals/introduction-li-ion/AgMo6S8.png?width=450px)

Data for structural model obtained from [here](http://www.crystallography.net/cod/1509061.html)

## Influences of site energy and ion-ion interactions

Will discuss LMO here

<small>

`[1]` S.T. Coleman, W.R. McKinnon, J.R. Dahn, "Lithium intercalation in Li<sub>x</sub>Mo<sub>6</sub>Se<sub>8</sub>: A model mean-field lattice gas", *Phys. Rev. B* **29**, 4147 (1984)

`[2]` J.R. Dahn, W.R. McKinnon, J.J. Murray, R.R. Haering, R.S. McMillan, A.H. Rivers-Bowerman, "Entropy of the intercalation compound Li<sub>x</sub>Mo<sub>6</sub>Se<sub>8</sub> from calorimetry of electrochemical cells", *Phys. Rev. B* **32**, 3316 (1985)

</small>