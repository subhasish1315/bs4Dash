% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dashboardSidebar.R, R/aliases.R
\name{bs4SidebarMenuItem}
\alias{bs4SidebarMenuItem}
\alias{menuItem}
\title{Create a Boostrap 4 dashboard main sidebar menu item}
\usage{
bs4SidebarMenuItem(
  text,
  ...,
  tabName = NULL,
  icon = NULL,
  startExpanded = FALSE,
  condition = NULL
)

menuItem(
  text,
  ...,
  tabName = NULL,
  icon = NULL,
  startExpanded = FALSE,
  condition = NULL
)
}
\arguments{
\item{text}{Item name.}

\item{...}{\link{bs4SidebarMenuSubItem}.}

\item{tabName}{Should correspond exactly to the tabName given in \code{\link{bs4TabItem}}.}

\item{icon}{Item icon.}

\item{startExpanded}{Whether to expand the \link{bs4SidebarMenuItem} at start.}

\item{condition}{When using \link{bs4SidebarMenuItem} with \link[shiny]{conditionalPanel},
write the condition here (see \url{https://github.com/RinteRface/bs4Dash/issues/35}).}
}
\description{
Build an adminLTE3 dashboard main sidebar menu item
}
\note{
See examples for a use case of the condition parameter.
}
\examples{
if (interactive()) {
 # sidebarItem with conditional value
 library(shiny)
 library(bs4Dash)
 
 ui <- bs4DashPage(
  bs4DashNavbar(),
  bs4DashSidebar(
    bs4SidebarMenu(
      id = "sidebarMenu",
      bs4SidebarMenuItem(
        text = "Tab 1",
        tabName = "tab1"
      ),
      bs4SidebarMenuItem(
        condition = "input.show == true",
        text = "Tab 2",
        tabName = "tab2"
      )
    )
  ),
  bs4DashBody(
    bs4TabItems(
      bs4TabItem(
        tabName = "tab1",
        h1("Welcome!"),
        checkboxInput("show", "Show Tab 2", FALSE)
      ),
      bs4TabItem(
        tabName = "tab2",
        h1("Hey! You found me!")
      )
    )
   )
  )
  server <- function(input, output){}
  shinyApp(ui = ui, server = server)
}
}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
