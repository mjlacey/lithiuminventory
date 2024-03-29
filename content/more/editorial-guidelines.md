+++
archetype = "contentpage"
title = "Lithium Inventory Editorial Guidelines"
weight = 5
draft = false
author = "Matthew Lacey"
date = 2023-03-31T11:06:20+02:00
+++

{{% notice style="info" %}}
These guidelines are in a draft stage and subject to change.
{{% /notice %}}

As far as possible, Lithium Inventory should have as consistent a writing style, technical level, structure, look and feel across the site as possible. Contributions are welcomed from anyone with relevant expertise, but it is requested that all contributions adhere to a set of editorial guidelines, which are given here.

## Why write for Lithium Inventory?

At the time of writing, the battery market is booming, with scarcely believable sums of money being poured into battery R&D towards all manner of different applications. With this, more and more new people join the battery field, often confronted with a new, highly complex and jargon-filled technical landscape to contend with. Companies scramble to upskill their employees and attract existing talent. Universities are under huge pressure to continually develop the next generation of scientists and engineers. VCs, analysts and journalists battle to untangle the web of hype weaved by startups, researchers and industry leaders, all vying for their piece of the market.

This is a tremendous time to be a battery scientist, and in particular an electrochemist. Never before has this 200-year-old scientific discipline been so relevant. But with this new status has come many challenges. Electrochemistry is a complex discipline at the crossroads of chemistry, physics, and engineering, memorably characterised by Prof. Jürgen Janek as "the crispbread of the sciences: dry, hard, not glamorous". For many approaching this field for the first time - or even with many years of hands on experience - the concepts can be inaccessible, the methods arcane, the model systems irrelevant and the terminology confusing.

The idea behind Lithium Inventory is to make some kind of effort to break down these barriers to entry, to make sense of the nonsense, to demystify, and provide a comprehensive and accessible resource for newcomers and seasoned pros alike - not just for electrochemistry but for battery science more generally. Therefore, regardless of job description or academic title:

- If you're an expert in some area related to battery science, materials, electrochemistry, modelling, characterisation methods, industrial research... I'd like you to write for Lithium Inventory.

- If you've developed expertise in a really cool method that you think the world really needs to know... I'd like you to write for Lithium Inventory. 

- If you've mastered a method that everyone else continually misapplies, to your eternal frustration... I'd really like you to write for Lithium Inventory. 

- If you're an expert in a related area and really think that all the materials scientists, electrochemists, modellers, whoever could really, really do with learning something about your area... you get the idea.

With your help, I hope Lithium Inventory can become a trusted source of knowledge for anyone working in this rapidly evolving field.

## Content proposals and formatting

Right now, Lithium Inventory has no submission or content management system. Please contact [Matt](/more/about/index.html#matthew-j-lacey----editor) if you have a suggestion for a contribution.

At the moment, the simplest solution is to prepare and provide a draft in a suitable format (e.g. Word document, Google Doc), with separate figure files. Markdown is preferred for text, and the [documentation for Relearn](https://mcshelby.github.io/hugo-theme-relearn/cont/markdown/index.html) (upon which this site is built) has a good guide for this. Information about figures, etc is given further down on this page.

Offers of help regarding development of interactive features will be warmly welcomed.

## Writing style

1.  **Use clear and concise language.** The writing style should prioritise clarity and comprehension.
2. Use an **active voice instead of a passive voice** where possible. Write like you're having a conversation with the reader - give your writing some personality!
3. **Avoid jargon and abbreviations** as far as possible. Where these are necessary, ensure they are defined in the text. For technical terms spanning multiple pages or with longer explanations necessary, consider adding them to the [definitions and conventions](/more/definitions-conventions) page.
4. **Encourage reader feedback and interaction**. Each page has a comments section provided by Disqus, and discussion should be encouraged. Consider adding contact information to reach out with questions or comments. Pages should be updated on the basis of post-publication feedback where necessary.

## Tone, ethics and engagement

1. The tone should be **objective and neutral** as far as possible.
2. **Avoid personal opinions or anecdotes** unless they are directly relevant to the content
3. Except with prior agreement, **promotion of companies or products is not allowed**. Companies and products may be discussed if relevant to the text, but must be done as objectively as possible, and must make clear if statements/figures, etc., are not independently verified.
4. **Relevant conflicts of interest must be declared.** 
5. All content should adhere to the same ethical standards as conventional scientific publishing. Plagiarism will not be tolerated.
6. All content should be attributed to the original author(s). Authors are encouraged to provide a brief bio, including expertise and relevant affiliations, to establish credibility. Regular contributors should be listed on the [about](/more/about) page. Requests for anonymity/pseudonimity will be considered, given reasonable justification.

## Structure and format

1. **Organise content into sections and subsections with descriptive headings**. Try to keep (sub)sections relatively short, e.g. ~400-500 words.
2. Consider using bullet points and numbered lists to present information in an easy-to-understand manner.
3. Include visual elements, such as images, graphs, or tables, to support the text and enhance understanding.
4. Use consistent formatting for text, headings and visual elements (see Figure style, below).

## Technical level

1. **Strive for a balance between accessibility and technical depth**. A basic understanding of the scientific area (e.g. bachelor or masters' degree) can be assumed, but provide explanations and context when presenting advanced concepts.
2. For discussion of methods/models, **clearly state any assumptions**.
3. **Use relevant examples and analogies to help explain complex ideas**.
4. **Provide citations and references** for research findings, equations, and other technical information, but try to minimise the need to refer to external sources.

## Consistency and cross-referencing

1. **Use terminology consistent with other content on the website** as far as possible. Use terminology and symbols listed on the [definitions and conventions](/more/definitions-conventions), request additions to the site-wide definitions and conventions where this may be necessary.
2. Link to related pages on Lithium Inventory and to external sources where necessary to support readers' understanding and provide additional context.
3. Use cross-referencing to direct readers to related sections within Lithium Inventory where relevant.

## Figure style

Creation of figures are encouraged, provided they follow the look and feel of the website as closely as possible.

#### Fonts

The main font of Lithium Inventory is [Roboto](https://fonts.google.com/specimen/Roboto). Use Light 300 for regular text, Bold 700 for headings.

#### Colours

Follow the below primary colours when creating figures, where possible:

{{% badge color = "#f7f7f2" %}}<span style="color: #261c15">#F7F7F2</span>{{% /badge %}}
{{% badge color = "#261c15" %}}#261C15{{% /badge %}}
{{% badge color = "#01B636" %}}#01B636{{% /badge %}}
{{% badge color = "#F3A712" %}}#F3A712{{% /badge %}}
{{% badge color = "#f62301" %}}#F62301{{% /badge %}}
{{% badge color = "#067999" %}}#067999{{% /badge %}}
{{% badge color = "#6d21c3" %}}#6D21C3{{% /badge %}}
{{% badge color = "#f3b3a6" %}}#F3B3A6{{% /badge %}}

#### ggplot2 theme

For creating plots in R with ggplot2, you can use the [Lithium Inventory ggplot2 theme](/resources/li_theme.R).

#### Figure format

- Preferred format for vector graphics is SVG, ensure that text is converted to outline. Alternatively, use PNG, but keep resolutions below 1000 px in the longest dimension.
- Do not use transparent background; use the background colour {{% badge color = "#f7f7f2" %}}<span style="color: #261c15">#F7F7F2</span>{{% /badge %}} (so that the figure is visible using both light and dark themes).
- Photographs should be in JPG format, scaled to appropriate resolution (please, less than 1000px in the longest direction, unless for exceptional reasons).