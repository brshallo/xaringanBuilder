
# Setup --------------
# # Install from github
# remotes::install_github('jhelvy/xaringanBuilder')
library(xaringanBuilder)

# Set directory to example folder:
setwd(here::here("inst", "example"))

# Run examples --------------

# Build html from Rmd file
build_html("slides.Rmd")

# Build pdf from Rmd or html file
build_pdf("slides.Rmd")
build_pdf("slides.html")

# Build gif from Rmd, html, or pdf file
build_gif("slides.Rmd")
build_gif("slides.html")
build_gif("slides.pdf")

# Build first slide thumbnail from Rmd or html file
build_thumbnail("slides.Rmd")
build_thumbnail("slides.html")

# Build pptx from Rmd, html, or pdf file
build_pptx("slides.Rmd")
build_pptx("slides.html")
build_pptx("slides.pdf")

# Build html, pdf, gif, and thumbnail of first slide from Rmd file
build_all("slides.Rmd")

# Build PDF using xaringan_to_pdf, which includes complex slides
# (e.g. with panelsets)
xaringan_to_pdf("slides_complex.html")
xaringan_to_pdf(input = "slides_complex.html",
                output_file = "slides_complex_partial.pdf",
                include_partial_slides = TRUE)
