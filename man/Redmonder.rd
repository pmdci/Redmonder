\name{Redmonder}
\alias{redmonder.pal}
\alias{display.redmonder.pal}
\alias{display.redmonder.all}
\alias{redmonder.pal.info}
\alias{redmonder}
\alias{colors}
\alias{Redmonder}
\alias{redmonder.all}
\title{Redmonder palettes}
\description{Creates nice-looking color palettes based on colour schemes inspired by Microsoft applications.\cr
Redmonder is a fork of RColorBrewer. See \href{https://cran.r-project.org/web/packages/RColorBrewer/}{RColorBrewer} documentation for more information.\cr\cr
The fundamental diference between RColorBrewer and Redmonder is the included color palettes. RColorBrewer is based on the design principles established by \href{http://www.colorbrewer.org}{Color Brewer project site}, while Redmonder does not. Redmonder is not designed as a replacement for RColorBrewer, but as an alternative for when the design principles of ColorBrewer are not required.
}
\usage{redmonder.pal(n, name)
display.redmonder.pal(n, name)
display.redmonder.all(n=NULL, type="all", select=NULL, exact.n=TRUE,
colorblindFriendly=FALSE)
redmonder.pal.info
}
\arguments{
\item{n}{Number of different colors in the palette, minimum 3,
maximum depending on palette}
\item{name}{A palette name from the lists below}
\item{type}{One of the string "div", "qual", "seq", or "all" }
\item{select}{A list of names of existing palettes}
\item{exact.n}{If TRUE, only display palettes with a color number given by n}
\item{colorblindFriendly}{if TRUE, display only colorblind friendly palettes}
}

\details{
\code{redmonder.pal} makes the color palettes from Redmonder
available as R palettes.

\code{display.redmonder.pal()} displays the selected palette in a graphics window.

\code{display.redmonder.all()} displays the a few palettes simultanueously in a graphics window.

\code{redmonder.pal.info} returns information about the available palettes as a dataframe.
\code{redmonder.pal.info} is not a function, it is a variable. This might change in the future.


There are 3 types of palettes, sequential, diverging, and qualitative:
\enumerate{
\item Sequential palettes are suited to ordered data that progress from low to high.
Lightness steps dominate the look of these schemes, with light colors for low data values
to dark colors for high data values. All sequential palette names start with a lowercase \bold{s}.
\item Diverging palettes put equal emphasis on mid-range critical values and extremes at both ends
of the data range. The critical class or break in the middle of the legend is emphasized
with light colors and low and high extremes are emphasized with dark colors that have
contrasting hues. All diverging palette names start with a lowercase \bold{d}.
\item Qualitative palettes do not imply magnitude differences between legend classes,
and hues are used to create the primary visual differences between classes.
Qualitative schemes are best suited to representing nominal or categorical data.
All qualitative palette names start with a lowercase \bold{q}.
}
The sequential palettes names are:\cr
sPBIGn
sPBIGy1
sPBIRd
sPBIYl
sPBIGy2
sPBIBu
sPBIOr
sPBIPu
sPBIYlGn
sPBIRdPu

All the sequential palettes are available in variations from 3 different values up to 9 different values.

The diverging palettes are:\cr
dPBIYlBu
dPBIYlPu
dPBIPuGn
dPBIPuOr
dPBIRdBu
dPBIRdGy
dPBIRdGn

All the diverging palettes are available in variations from 3 different values up to 11 different values.

For qualitative palettes, the lowest number of distinct values available always is 3 and the larger is 8, except for the palette qMSOStd which ranges from 3 to 10. The qualitative palettes are:\cr
qMSOStd
qMSO12
qMSO15
qMSOBuWarm
qMSOBu
qMSOBu2
qMSOBuGn
qMSOGn
qMSOGnYl
qMSOYl
qMSOYlOr
qMSOOr
qMSOOrRd
qMSORdOr
qMSORd
qMSORdPu
qMSOPu
qMSOPu2
qMSOMed
qMSOPap
qMSOMrq
qMSOSlp
qMSOAsp
qPBI






}


\examples{
## create a sequential palette for usage and show colors
mypalette<-redmonder.pal(7,"sPBIRdPu")
image(1:7,1,as.matrix(1:7),col=mypalette,xlab="sPBIRdPu (sequential)",
       ylab="",xaxt="n",yaxt="n",bty="n")
## display a divergent palette
display.redmonder.pal(7,"dPBIYlBu")
devAskNewPage(ask=TRUE)
## display a qualitative palette
display.redmonder.pal(7,"qPBI")
devAskNewPage(ask=TRUE)
## display all palettes simultanoeusly
display.redmonder.all()
## display the first 10 colors of all palettes
display.redmonder.all(n=10, exact.n=FALSE)
devAskNewPage(ask=TRUE)
## display all palettes that have a minimum of 10 colors
display.redmonder.all(n=10)
devAskNewPage(ask=TRUE)
## display only diverging palettes
display.redmonder.all(type="div")
devAskNewPage(ask=TRUE)
## display only sequential palettes
display.redmonder.all(type="seq")
devAskNewPage(ask=TRUE)
## display only qualitative palettes
display.redmonder.all(type="qual")
devAskNewPage(ask=TRUE)
## display the first 5 colors of all diverging palettes
display.redmonder.all(n=5,type="div",exact.n=TRUE)
devAskNewPage(ask=TRUE)
## display palettes that are colorblind friendly
display.redmonder.all(colorblindFriendly=TRUE)
devAskNewPage(ask=TRUE)
## lists information for all palettes
redmonder.pal.info
## produces information for palette sPBIRdPu only
redmonder.pal.info["sPBIRdPu",]
## produces the maximum number of color values for palette sPBIRdPu only
redmonder.pal.info["sPBIRdPu",]$maxcolors
}

\value{A palette
\cr
You will get an error when you ask for a nonexisting palette,
and you will get a warning if a palette you asked for exists
but not with as many different leves as you asked for.
}


\author{Pedro Mac Dowell Innecco, \href{http://www.dmu.ac.uk}{De Montfort University},
\email{dmu@pedroinnecco.com}. Redmonder is a fork of RColorBrewer by Erich Neuwirth, University of Vienna. See \href{https://cran.r-project.org/web/packages/RColorBrewer/}{RColorBrewer} documentation for more information.
}
\keyword{color}

