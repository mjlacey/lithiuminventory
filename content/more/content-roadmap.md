---
archetype: "contentpage"
title: "Content Roadmap"
date: 2023-02-14T20:24:48+01:00
draft: false
---

<div style="text-align: right">
{{% badge style="transparent" icon="pen" %}}Matthew Lacey{{% /badge %}}
{{% badge style="blue" icon="calendar" %}}15 Feb 2023{{% /badge %}}
</div>

{{% notice style="info" %}}
This page is in draft form and in a very early stage. ML welcomes discussion and suggestions during the configuration phase!
{{% /notice %}}

The **Content Roadmap** is intended to provide an overview of the overall structure of the scientific content of Lithium Inventory and the priorities for content development. It is not intended to be static and should be updated according to needs, suggestions, feedback, popular demand, etc. It is currently heavily Li-ion battery focused, but this is considered the core competence of this website due to the current significance of the research field and growth of the industry. Expanding the scope of the content to other technological areas can be considered once the core content is in place.

## Battery fundamentals

The *Battery fundamentals* chapter should provide a general introduction to batteries in general, with a specific focus on Li-ion batteries, and the underlying chemistry and physics.

- [ ] **What is a battery?** The bare essentials - basic construction, core components, function, simplest recognisable examples. No jargon.
- #### Introduction to battery chemistry
- [ ] **Electrochemical principles.** Definitions, conventions, potential and current, electrode/electrolyte interface
- [ ] **Thermodynamics of batteries.** Simplified example (e.g. Daniell cell). Introduction to electrochemical series, Nernst equation, prediction of cell voltage, material selection.
- [ ] **Reaction kinetics in batteries.** Introduction to kinetics of charge transfer (e.g. Butler-Volmer) and mass transport (e.g. Fick's law), and energy loss processes. Influence of factors such as temperature and current on discharge energy.
- #### Introduction to lithium-ion battery chemistry
- [ ] **Li-ion battery materials.** Introduction to intercalation materials, non-aqueous electrolytes, porous electrodes
- [ ] **Thermodynamics of Li-ion batteries.** Electrode potential in intercalation materials, e.g. lattice-gas model. Origin of one- and two-phase behaviour and effect on potential vs charge
- [ ] **Interfacial processes in Li-ion batteries.** Solid electrolyte interphase (SEI) layer
- [ ] **Reaction kinetics in Li-ion batteries.** Models of reaction kinetics, resistance in porous electrodes (e.g. de Levie transmission line)
- [ ] **Mass transport in Li-ion batteries.** Mass transport in the solid state. Mass transport in non-aqueous electrolytes, transference number, concentrated solution theory
- [ ] **Reversibility and lifetime.** Introduction to major ageing mechanisms and modes (interfacial layer growth, loss of contact, structural degradation, lithium plating, etc.). Introduction of concepts such as loss of active material (LAM) and loss of lithium inventory (LLI).
- [ ] **Thermal behaviour.** Reversible and irreversible heat.
- [ ] **Performance and metrics.** Introduction to key metrics and key performance indicators (KPIs), common performance plots.
- [ ] **History of Li-ion battery development.** Timeline, major milestones, major names
- #### Cell development
- [ ] **Cell formats and cell design.** Cylindrical, pouch, prismatic. Electrode thickness, material ratios...

## Battery materials

The **Battery materials** chapter should provide an introduction to the chemistry of specific battery materials, beginning with the major commercialised families and introducing the development of new materials.

- [ ] **Introduction to major Li-ion battery families.** graphite || layered oxide (LCO, NMC, NCA), LFP, LMO, LTO; LMP (Lithium-metal-polymer)
- [ ] **Positive electrode materials**. LCO, NMC, NCA, LMO, LFP
- [ ] **Negative electrode materials.** Graphite, LTO. Introduction to silicon and lithium metal
- [ ] **Electrolytes.** Materials, key properties; conductivity, transference number, viscosity, vapour pressure...
- [ ] **Separators.** Materials, key properties; MacMullin number, Gurley number, thermal stability...
- #### Electrode material research
- [ ] **Mn-rich.**
- #### Electrolyte material research
- [ ] **Polymer electrolytes.**
- [ ] **Solid electrolytes.**
- #### Alternative chemistries
- [ ] **Na-ion batteries.**
- [ ] **Lithium-sulfur batteries.**
- [ ] **Lithium-oxygen batteries.**
- [ ] **Multivalent batteries.**

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
    - [ ] RC circuits
    - [ ] Constant phase elements
    - [ ] Diffusion impedance. Derivation of the Warburg impedance from Fick's law
    - [ ] The Randles circuit
    - [ ] The Debye circuit
    - [ ] Data validation - Kramers-Kronig transform
    - [ ] Three- and four-electrode measurements
    - [ ] Fitting example with real data
    - [ ] Exercise in data analysis
- [ ] **Advanced EIS.**
    - [ ] Distribution of relaxation times (DRT)
    - [ ] Dynamic EIS
    - [ ] Drift correction methods
    - [ ] Analytical applications
- [ ] **Direct current methods**. DCIR, ICI
- [ ] **Diffusion coefficient measurement.** GITT, PITT
- [ ] **Transference number measurement.** Bruce-Vincent method, Hittorf method, Balsara-Newman methods
- #### Best practices
- [ ] **Experimental design.**
- [ ] **Recording data.**
- [ ] **Data presentation.**
- [ ] **Data transparency.** Availability, journal checklists, etc.

## Experimental material characterisation methods

The *Experimental material characterisation methods* chapter could provide an introduction to key chemical/physical characterisation methods (e.g. spectroscopic methods) used in battery research, with a focus on the connection to electrochemical methods (e.g. *in situ* or *operando* methods).

## Introduction to battery modelling

The *Introduction to battery modelling* chapter could provide an introduction to the principles behind battery modelling, e.g. finite element methods, MD, DFT, key models (e.g. P2D, single particle model), key software packages, validation of models.

## Battery industry

The *Battery industry* chapter could provide an introduction to how the industry operates, e.g. technology transfer, automotive product development cycle, production methods, costs, key considerations for industry...

## Explainers/deep dives

The *Explainers/deep dives* section could be a loosely-structured collection of deep dives into specific topics, papers, either because of media interest, controversy, significance in the field...

## More

- [ ] Nomenclature and definitions
- [ ] Community - other related initiatives
- [ ] Editorial policy and style guide