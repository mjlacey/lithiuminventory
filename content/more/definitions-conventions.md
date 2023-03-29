+++
archetype = "contentpage"
title = "Definitions and Conventions"
draft = false
author = "Matthew Lacey"
date = 2023-03-29T09:44:11+02:00
+++

## Glossary

###### Electrode potential

Formally defined as the electromotive force (emf) of a galvanic cell comprising the electrode to be characterised and a reference electrode. Consequently, all electrode potentials must be stated versus the appropriate reference. By convention, standard electrode potentials are given relative to the standard hydrogen electrode (SHE). In lithium battery research, it is common to consider electrode potentials relative to a reference electrode comprising a lithium metal electrode immersed in a solution containing a lithium salt (Li/Li<sup>+</sup>).

###### Negative electrode

In a rechargeable electrochemical cell, the negative electrode is the electrode with the **lower** electrode potential during normal operation, and functions as the anode (i.e., is oxidised) during discharge. The use of the term "negative electrode" avoids ambiguity when distinguishing electrodes as formally it is the anode only on discharge (and hence, when charging, becomes the cathode).

###### Positive electrode

In a rechargeable electrochemical cell, the positive electrode is the electrode with the **higher** electrode potential during normal operation, and functions as the cathode (i.e., is reduced) during discharge. The use of the term "positive electrode" avoids ambiguity when distinguishing electrodes as formally it is the cathode only on discharge (and hence, when charging, becomes the anode).

###### Transference number

In electrolytes, the transference number, {{% math %}}$T_i${{% /math %}}, is defined as the number of moles of species {{% math %}}$i${{% /math %}} transferred by migration, per Faraday of charge (1 F = 96485 C). The sum of the transport numbers of all ionic species in an electrolyte is 1, but {{% math %}}$T_i${{% /math %}} does not have any upper or lower bounds.

###### Transport number

In electrolytes, the transport number, {{% math %}}$t_i${{% /math %}}, is defined as the fraction of the ionic current carried by species {{% math %}}$i${{% /math %}}. The transport number must be between 0 and 1, and the sum of the transport numbers of all ionic species in an electrolyte is 1.

## Terms

| Symbol | Definition      | Units   | Notes                         |
|--------|-----------------|---------|-------------------------------|
|{{% math %}}$a_i${{% /math %}} | Thermodynamic activity of species {{% math %}}$i${{% /math %}} | dimensionless |           |
|{{% math %}}$A${{% /math %}} | Surface area | cm<sup>2</sup> |          |
|{{% math %}}$c_i${{% /math %}} | Concentration of species {{% math %}}$i${{% /math %}} | mol dm<sup>-3</sup> |       |
|{{% math %}}$C${{% /math %}} | Capacitance | F |           |
|{{% math %}}$D_i${{% /math %}} | Diffusion coefficient of species {{% math %}}$i${{% /math %}} | cm<sup>2</sup> s<sup>-1</sup> |       |
|{{% math %}}$E${{% /math %}} | <ol><li>Electrode potential</li><li>Voltage</li></ol> | V |          |
|{{% math %}}$\varepsilon${{% /math %}} | Dielectric constant | dimensionless |             |
|{{% math %}}$f${{% /math %}} | Frequency | Hz |             |
|{{% math %}}$F${{% /math %}} | Faraday's constant | C | {{% math %}}$F${{% /math %}} = 96485 C      |
|{{% math %}}$I${{% /math %}} | Current | A |              |
|{{% math %}}$j${{% /math %}} | <ol><li>Current density</li><li>Imaginary unit, {{% math %}}$\sqrt{-1}${{% /math %}}</li></ol> | <ol><li>A cm<sup>-2</sup></li></ol>    |              |
|{{% math %}}$k${{% /math %}} | <ol><li>Cell constant</li><li>Diffusion resistance coefficient</li></ol> | <ol><li>cm<sup>-1</sup></li><li>Ω s<sup>-1/2</sup></li></ol> |          | 
|{{% math %}}$\mu_i${{% /math %}} | Chemical potential of species {{% math %}}$i${{% /math %}} | kJ mol<sup>-1</sup> |       |
|{{% math %}}$Ne${{% /math %}} | Newman number | dimensionless | See [Transference number measurement](/experimental-electrochemistry/transference-number-measurement/#measuring-tsubsub-the-bruce-vincent-method)     |
|{{% math %}}$\omega${{% /math %}} | Angular frequency | rad s<sup>-1</sup> |             |
|{{% math %}}$Q${{% /math %}} | Charge | C or Ah | 1 Ah = 3600 C             |
|{{% math %}}$Q_0${{% /math %}} | Constant phase element parameter | S s<sup>s</sup> | See [Constant phase elements](/experimental-electrochemistry/eis/constant-phase-element/)           |
|{{% math %}}$R${{% /math %}} | <ol><li>Ideal gas constant</li><li>Electrical resistance</li></ol> | <ol><li>J K<sup>-1</sup> mol<sup>-1</sup></li><li>Ω</li></ol> | <ol><li>{{% math %}}$R${{% /math %}} = 8.314 J K<sup>-1</sup> mol<sup>-1</sup></li></ol> |
|{{% math %}}$\sigma_i${{% /math %}} | Partial conductivity of species {{% math %}}$i${{% /math %}} | S cm<sup>-1</sup> |       |
|{{% math %}}$\sigma${{% /math %}} | <ol><li>Electrical or ionic conductivity</li><li>Warburg coefficient</li></ol> | <ol><li>S cm<sup>-1</sup></li><li>Ω s<sup>-1/2</sup></li></ol> | <ol><li></li><li>See [Diffusion Impedance](/experimental-electrochemistry/eis/diffusion-impedance/)</li></ol>      |
|{{% math %}}$t_i${{% /math %}} | [Transport number](/more/definitions-conventions/#transport-number) of species {{% math %}}$i${{% /math %}} | dimensionless |       |
|{{% math %}}$t${{% /math %}} | time | s |            |
|{{% math %}}$T_i${{% /math %}} | [Transference number](/more/definitions-conventions/#transference-number) of species {{% math %}}$i${{% /math %}} | mol Faraday<sup>-1</sup> |       |
|{{% math %}}$T${{% /math %}} | Temperature | K, or °C |         |
|{{% math %}}$\tau${{% /math %}} | Time constant | s |           |
|{{% math %}}$\theta${{% /math %}} | Phase angle | ° | See [Principles of EIS](/experimental-electrochemistry/eis/principles/)         |
|{{% math %}}$\Delta V${{% /math %}} | Potential difference | V or mV |          |
|{{% math %}}$z_i${{% /math %}} | Charge number of species {{% math %}}$i${{% /math %}} | dimensionless |       |
|{{% math %}}$\pmb{Z}${{% /math %}} | Electrical impedance | Ω |      |
|{{% math %}}$Z'${{% /math %}} | Real part of the impedance | Ω |       |
|{{% math %}}$Z''${{% /math %}} | Imaginary part of the impedance | Ω |       |