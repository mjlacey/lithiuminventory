+++
archetype = "contentpage"
title = "Electrochemical Impedance Spectroscopy (EIS)"
weight = 4
draft = false
tags = ["EIS", "Analysis"]
author = "Matthew Lacey"
date = "2023-03-28"
+++

{{% notice style="green" title="Does EIS confuse you? You're not alone!" icon="question" %}}

<!--
**Electrochemical Impedance Spectroscopy (EIS)** is an electrochemical analysis technique which uses alternating current (AC) signals over a range of different frequencies to measure the electrical impedance of an electrochemical system as a function of frequency. The impedance is a complex number which describes both the resistance (energy dissipation) and reactance (energy storage) characteristics of a system. Measuring the impedance as a function of frequency, and typically by fitting the response to a model of the system, the user can obtain information about the different energy loss and energy storage processes occurring within the system. EIS finds plenty of application in battery research, from fundamental studies to industrial battery testing. However, using EIS in practice is often very complicated, which can easily lead to inappropriate models or misinterpretation of results.
-->

This introduction to electrochemical impedance spectroscopy (EIS) began in 2016 as a result of what I saw as a lack of easily accessible and useful information for learning the principles, theory and practical application of EIS for most users (that is, non-electrochemists). The way I saw it, there was very little help available for those who got the basic idea of EIS but were struggling to fit their data or weren't sure how to set up their experiments. If you're looking to get a handle on EIS but aren't sure where to start, these pages are, hopefully, for you.

{{% /notice %}}

{{% notice info %}}
This page has been adapted from content originally published at http://lacey.se/science/eis
{{% /notice %}}

![Example of a Nyquist plot with data points and a fit line](/images/experimental-electrochemistry/eis/titleexample.png?width=450px "Example of a Nyquist plot with data points and a fit line")

## Topics

The pages that follow include basic explanations starting from the beginning, along with some simulation web apps and some exercises where you can get a feel for working with impedance data. You can get started by following the links below, or in the main menu. Comments and suggestions for the [Content Roadmap](/more/content-roadmap) are always very welcome.

- **[Principles of EIS](principles)**. Get familiar with the basic concepts of EIS.
- **[RC circuits](rc-circuits)**. An introduction to equivalent circuit models and their simplest building blocks.
- **[Multiple time constants](multiple-time-constants)**. Building larger circuit models and understanding how elements combine.
- **[Constant phase elements](constant-phase-element)**. An important circuit element for modelling non-ideal behaviour.
- **[Diffusion impedance](diffusion-impedance)**. Circuit elements for modelling mass transport in electrochemical systems.
- **[The Randles circuit](randles-circuit)**. A key equivalent circuit model for electrochemical systems.
- **[Debye circuit](debye-circuit)**. An exercise in data interpretation and the importance of understanding what processes correspond to which circuit element.
- **[Kramer-Kronig transform](kramers-kronig)**. Experimental data validation.
- **[Three- and four-electrode measurements](three-four-electrodes)**. Some examples of simplifying experimental response through appropriate experimental design.
- **[Fitting with real data](fitting-with-real-data)**. A walkthrough of a practical data fitting process.
- **[Recommended reading](recommended-reading)**.
- **[An exercise in analysing EIS data](exercise-in-analysing-eis)**. Test your own knowledge!

## Words of caution/encouragement

First off, I want to say that although I’ve been a user of impedance spectroscopy since 2008, on an applied level (battery characterisation) it still confuses the hell out of me on a regular basis. Learning the theory is one thing, but in-depth analysis, especially when it comes to equivalent circuit fitting, is hard – it requires a healthy degree of intuition, and usually needs very carefully designed experiments to get meaningful results… but sometimes it’s just a pain. I'd dare to suggest that a large proportion - maybe even a majority - of the people in the battery field who have done some impedance spectroscopy work in peer-reviewed publications do not really understand what they’re doing with it.

But, don’t be discouraged(!). It’s not easy to learn, but in writing this I’ve done my best to keep the level as accessible as possible, to give examples, some little apps where you can do simulations to see how changing parameters in a model system changes things, and many more, to try and give you the best chance to build up that level of intuition.

I used to finish my lectures with “Matt’s top tips for impedance spectroscopy”, to try to restore some of the enthusiasm and confidence I’ve just stolen from my poor students, and here they are:

#### Matt's top tips for impedance spectroscopy

- EIS can be ambiguous, and a good equivalent circuit fit can be elusive (but don’t let that put you off)
- The fewer parameters an equivalent circuit has, the better
- Always check the fitted values **make sense** (and the errors are reasonable).
- Practice makes perfect!
- Download [some simulation/fitting software of your choice] and play around*…

<small>* An example is ZView (Scribner Associates). Older versions (e.g. 3.2) allow you to do simulations as well as equivalent circuit fitting of data. Perhaps Google can help you out…</small>

<hr/>