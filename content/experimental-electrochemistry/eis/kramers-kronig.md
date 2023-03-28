+++
archetype = "contentpage"
title = "The Kramers-Kronig transform"
weight = 8
draft = false
tags = ["EIS", "ECM", "Analysis", "Validation", "Kramers-Kronig"]
+++

<div style="text-align: right">
{{% badge style="transparent" icon="pen" %}}Matthew Lacey{{% /badge %}}
{{% badge style="blue" icon="calendar" %}}28 Mar 2023{{% /badge %}}
</div>


I will not go into too much detail about the Kramers-Kronig (or, just K-K) transform other than to say that this is a method for validating impedance data, to give you some idea of whether it’s actually possible to fit an equivalent circuit. This is the equation:

```math
$$-Z''_{KK} = \frac{2\omega}{\pi} \int^\infty_0 \frac{Z'(x) - Z'(\omega)}{x^2 - \omega^2} dx $$
```

Really, you don’t actually need to know this equation to do a K-K transform, because it is sometimes included as a function in the software for the instrument – but it is useful to know where it comes from. The [Kramers-Kronig relations](https://en.wikipedia.org/wiki/Kramers–Kronig_relations) say – in this context – that you can calculate the imaginary part of the impedance from the real part of the impedance, and vice versa, provided the measured impedance response satisfies these conditions:

- it’s **causal** – that is, the response **only** comes from the applied perturbation
- it’s **linear** – that is, the response is first order (i.e., response does not change with larger perturbations). Unfortunately, electrochemical systems are almost often not linear – current changes non-linearly with applied voltage – so applied voltages are kept to as low an amplitude as possible (say, a few mV), to keep the response as linear as possible.
- it’s **stable** – that is, the system does not change with time, or continue oscillating after the perturbation is removed.
- it’s **finite for all frequencies** – this is an important one, because it says that the K-K transform cannot be applied to impedance spectra which are capacitive at low frequency, because the impedance tends towards infinity.

A response which does not satisfy all of these conditions probably cannot be fitted to an (appropriate) equivalent circuit.

## A simpler alternative

Actually, there is an easier way you can check the validity of the impedance response without having to look for a K-K transform function. Typically, when running an impedance measurement, you will likely run through the frequencies from highest to lowest. Do that, but then run the measurement again with the order reversed – start with the lowest frequencies first, and finish the measurement with the highest frequencies. If you get the same impedance spectrum twice, it’s a good indication that the data is reliable.