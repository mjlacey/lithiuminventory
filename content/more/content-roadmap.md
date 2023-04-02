---
archetype: "contentpage"
title: "Content Roadmap"
date: 2023-03-28
draft: false
author: "Matthew Lacey"
---


{{% notice style="info" %}}
This page is in draft form and in a very early stage. ML welcomes discussion and suggestions during the configuration phase!
{{% /notice %}}

The **Content Roadmap** is intended to provide an overview of the overall structure of the scientific content of Lithium Inventory and the priorities for content development. It is not intended to be static and should be updated according to needs, suggestions, feedback, popular demand, etc. It is currently heavily Li-ion battery focused, but this is considered the core competence of this website due to the current significance of the research field and growth of the industry. Expanding the scope of the content to other technological areas can be considered once the core content is in place.

## Battery fundamentals

The *Battery fundamentals* chapter should provide a general introduction to batteries in general, with a specific focus on Li-ion batteries, and the underlying chemistry and physics.

- [ ] **What is a battery?** The bare essentials - basic construction, core components, function, simplest recognisable examples. No jargon.
- #### Introduction to battery chemistry
- [ ] **Electrochemical principles.** Definitions, conventions, potential and current, electrode/electrolyte interface
- [ ] **[Cell voltage and the Nernst equation.](/fundamentals/introduction-battery-chemistry/thermodynamics)** Simplified example (e.g. Daniell cell). Introduction to electrochemical series, Nernst equation, prediction of cell voltage, material selection.
- [ ] **Interfacial processes in batteries.** Introduction to double-layer theory, Marcus theory of electron transfer
- [ ] **Energy loss processes in batteries.** Introduction to kinetics of charge transfer (e.g. Butler-Volmer) and mass transport (e.g. Fick's law), and energy loss processes. Influence of factors such as temperature and current on discharge energy.
- #### Introduction to lithium-ion battery chemistry
- [ ] **Li-ion battery materials.** Introduction to intercalation materials, non-aqueous electrolytes, porous electrodes
- [ ] **Thermodynamics of Li-ion batteries.** Electrode potential in intercalation materials, e.g. lattice-gas model. Origin of one- and two-phase behaviour and effect on potential vs charge
- [ ] **Interfacial processes in Li-ion batteries.** Solid electrolyte interphase (SEI) layer
- [ ] **Reaction kinetics in Li-ion batteries.** Models of reaction kinetics, resistance in porous electrodes (e.g. de Levie transmission line)
- [ ] **Mass transport in Li-ion batteries.** Mass transport in the solid state. Mass transport in non-aqueous electrolytes, [transference number](/fundamentals/introduction-li-ion/transference/), concentrated solution theory (Stefan-Maxwell and Onsager equations).
- [ ] **Reversibility and lifetime.** Introduction to major ageing mechanisms and modes (interfacial layer growth, loss of contact, structural degradation, lithium plating, etc.). Introduction of concepts such as loss of active material (LAM) and loss of lithium inventory (LLI).
- [ ] **Thermal behaviour.** Reversible and irreversible heat.
- [ ] **Performance and metrics.** Introduction to key metrics and key performance indicators (KPIs), common performance plots.
- [ ] **History of Li-ion battery development.** Timeline, major milestones, major names

## Battery materials

The **Battery materials** chapter should provide an introduction to the chemistry of specific battery materials, beginning with the major commercialised families and introducing the development of new materials.

- #### Current technology
- [ ] **Introduction to major Li-ion battery families.** graphite || layered oxide (LCO, NMC, NCA), LFP, LMO, LTO; LMP (Lithium-metal-polymer)
- [ ] **Positive electrode materials**. LCO, NMC, NCA, LMO, LFP
- [ ] **Negative electrode materials.** Graphite, LTO. Introduction to silicon and lithium metal
- [ ] **Electrolytes.** Materials, key properties; conductivity, transference number, viscosity, vapour pressure...
- [ ] **Separators.** Materials, key properties; MacMullin number, Gurley number, thermal stability...
- #### Electrode material research
- [ ] **Mn-rich.** LMFP, LNMO, Mn-rich layered oxide, Li-rich NMC etc.
- [ ] **Conversion electrodes**
- #### Electrolyte material research
- [ ] **Polymer electrolytes.**
- [ ] **Solid electrolytes.**
- #### Alternative chemistries
- [ ] **Na-ion batteries.**
    - [ ] Positive electrodes. Layered oxides, polyanions, Prussian Blue analogues
    - [ ] Negative electrodes. Hard carbon.
- [ ] **K-ion batteries.**
- [ ] **Lithium-sulfur batteries.**
- [ ] **Lithium-oxygen batteries.**
- [ ] **Multivalent batteries.** Ca, Mg

## Experimental electrochemical methods

The *Experimental electrochemical methods* chapter should provide explanations of the electrochemical methods used in battery research and development, beginning with the fundamentals of experimental design, instrumentation etc. An emphasis must be placed on the assumptions and limitations of each method.

- #### Fundamentals of electrochemical methods
- [ ] **How potentiostats and battery cyclers work.**
- [ ] **Experimental design.** Introduction to cell design, cell formats.
- [ ] **Reference electrodes.**
- #### Core electrochemical methods
- [ ] **Galvanostatic cycling.** Capacity and cycle life determination. Coulombic efficiency determination. Rate capability.
- [ ] **Incremental methods.** Introduction to incremental capacity analysis (dQ/dV), differential voltage analysis (dV/dQ).
- [ ] **[Electrochemical impedance spectroscopy (EIS)](/experimental-electrochemistry/eis).**
    - [x] [Principles of EIS and equivalent circuit modelling](/experimental-electrochemistry/eis/principles)
    - [x] [RC circuits](/experimental-electrochemistry/eis/rc-circuits)
    - [x] [Multiple time constants](/experimental-electrochemistry/eis)
    - [x] [Constant phase elements](/experimental-electrochemistry/eis/constant-phase-element)
    - [x] [Diffusion impedance](/experimental-electrochemistry/eis/diffusion-impedance/)
    - [ ] Derivation of the Warburg impedance from Fick's law
    - [x] [The Randles circuit](/experimental-electrochemistry/eis/randles-circuit)
    - [x] [The Debye circuit](/experimental-electrochemistry/eis/debye-circuit/)
    - [x] [Data validation - Kramers-Kronig transform](/experimental-electrochemistry/eis/kramers-kronig)
    - [x] [Three- and four-electrode measurements](/experimental-electrochemistry/eis/three-four-electrodes)
    - [x] [Fitting example with real data](/experimental-electrochemistry/eis/fitting-with-real-data)
    - [x] [Exercise in data analysis](/experimental-electrochemistry/eis/exercise-in-analysing-eis)
- [ ] **Advanced EIS.**
    - [ ] Distribution of relaxation times (DRT)
    - [ ] Dynamic EIS
    - [ ] Drift correction methods
    - [ ] Analytical applications
- [ ] **Direct current methods**. DCIR, ICI
- [ ] **Diffusion coefficient measurement.** GITT, PITT
- [x] [**Transference number measurement.**](/experimental-electrochemistry/transference-number-measurement/) Bruce-Vincent method, Hittorf method, Balsara-Newman methods
- #### Best practices
- [ ] **Experimental design.**
- [ ] **Recording data.**
- [ ] **Data presentation.**
- [ ] **Data transparency.** Availability, journal checklists, etc.

## Experimental material characterisation methods

The *Experimental material characterisation methods* chapter could provide an introduction to key chemical/physical characterisation methods (e.g. spectroscopic methods) used in battery research, with a focus on the connection to electrochemical methods (e.g. *in situ* or *operando* methods).

## Battery modelling

The *Battery modelling* chapter could provide an introduction to the principles behind battery modelling at all relevant scales, e.g. finite element methods, MD, DFT, key models (e.g. P2D, single particle model), key software packages, validation of models.

- #### Materials modelling
    - [ ] Introduction to particle-based simulation techniques
- #### Cell modelling
    - [ ] Introduction to finite element methods
    - [ ] The Newman model

## Battery industry

The *Battery industry* chapter could provide an introduction to how the industry operates, e.g. technology transfer, automotive product development cycle, production methods, costs, key considerations for industry...

- #### Cell design
- [ ] **Cell formats.** Cylindrical, pouch, prismatic; features, pros/cons
- [ ] **Material and electrode design.** Electrode thickness, material ratios...
- [ ] **Production methods.** Active material synthesis at scale, electrolyte production, electrode coating, calendering, winding/stacking, filling, formation, QC...
- [ ] **Cell cost.** Material, production costs; influence of design choices on cost
- #### Batteries and the environment
- [ ] **Introduction to life cycle analysis (LCA).**
- [ ] **Environmental considerations of battery materials & battery production.**
- [ ] **Battery recycling.**

## Explainers/deep dives

The *Explainers/deep dives* section could be a loosely-structured collection of deep dives into specific topics, papers, either because of media interest, controversy, significance in the field...

## More

- [x] [Nomenclature, definitions and conventions](/more/definitions-conventions/)
- [ ] Community - other related initiatives
- [x] [Editorial Guidelines](/more/editorial-guidelines/)