li_style <- function(base_size = 12) {
  font <- "Roboto"
  heading_font <- "Roboto"
  sf_font <- "Roboto"
  
  ggplot2::theme(
    
    #Text format:
    #This sets the font, size, type and colour of text for the plot title
    plot.title = ggplot2::element_text(family=heading_font,
                                       face="bold",
                                       size=base_size + 10,
                                       color="#261c15"),
    #This sets the font, size, type and colour of text for the subtitle
    plot.subtitle = ggplot2::element_text(family=font,
                                          size=base_size + 4
                                          ),
    
    #Legend format
    #This sets the position and alignment of the legend, removes a title and background for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family=font,
                                        size=base_size,
                                        color="#261c15"),
    
    #Axis format
    #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. Lines can be added later with geom_hline() or geom_vline().
    axis.title = ggplot2::element_text(family=font,
                                       size=base_size + 2,
                                       color="#261c15"),
    axis.title.x = ggplot2::element_text(margin=ggplot2::margin(5,0,20,0)),
    axis.text = ggplot2::element_text(family=font,
                                      size=base_size,
                                      color="#261c15"),
    axis.text.x = ggplot2::element_text(margin=ggplot2::margin(5, b = 5)),
    axis.text.y = ggplot2::element_text(margin=ggplot2::margin(5, l = 5)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    
    #Grid lines
    #This removes all minor gridlines and x and y gridlines.
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color="#cbcbcb"),
    panel.grid.major.x = ggplot2::element_line(color="#cbcbcb"),
    
    #Blank background
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot. For publishing on Lithium Inventory, the background colour #f7f7f2 should be added when exporting the plot.
    panel.background = element_rect(fill = "transparent", colour = NA),  
    plot.background = element_rect(fill = "transparent", colour = NA),
    
    #Strip background (#This sets the panel background for facet-wrapped plots to #f7f7f2, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
    strip.background = ggplot2::element_rect(fill="f7f7f2"),
    strip.text = ggplot2::element_text(size  = base_size + 4,  hjust = 0)
  )
}
 
# Colour palette, for use with scale_colour_manual() or scale_fill_manual().
li_palette <- c("#01B636", "#F3A712", "#261C15", "#F62301", "#067999", "#6D21C3", "#F3B3A6")