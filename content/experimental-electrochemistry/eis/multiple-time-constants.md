+++
archetype = "contentpage"
title = "Multiple Time Constants"
weight = 3
draft = false
tags = ["EIS", "ECM", "RC circuit", "Analysis", "App"]
date = "2023-03-28"
author = "Matthew Lacey"
+++


{{% notice info%}}
This content has been transferred from lacey.se and is not updated for this site yet.
{{% /notice %}}

Link to app: http://lacey.se/apps/eis/rc-rc/

Let's consider the impedance of this circuit:

![RC-RC circuit](/images/experimental-electrochemistry/eis/ec-rcrc.svg?height=120px)

If you have familiarised yourself with the contents of the previous page you should recognise that we can calculate the impedance of this circuit by:

```math
$$\pmb{Z} = \frac{R_1}{1 + j \omega R_1 C_1} + \frac{R_2}{1 + j \omega R_2 C_2} $$
```

You can explore how the Nyquist plot for the impedance of this circuit varies with different R and C values using [this web app](http://lacey.se/apps/eis/rc-rc/) (note: web app is hosted at lacey.se). A screenshot of the app is below:

![RC-RC app](/images/experimental-electrochemistry/eis/rc-rc-app.png)

The app lets you set values for the two resistors and two capacitors. Some initial values are suggested already, just press “Simulate!” to get going.

Some suggestions: change the default capacitance values around and see what happens. Or adjust the values until the relaxation frequencies (time constants) are the same. The relaxation frequencies for each of the parallel RC units are given below the graph.