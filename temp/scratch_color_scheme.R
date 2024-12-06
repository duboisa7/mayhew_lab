# Comes from nationalparkcolors Arcadia
pal <- c("#FED789", "#023743", "#72874E", 
         
         "#476F84", "#A4BED5", "#453947")

pacman::p_load(sass, bslib, bsicons)


  theme <- bs_theme(
    version = 5,
    preset = "minty",
    
    # Controls the default grayscale palette
    bg = "#202123", fg = "#B8BCC2",
    # Controls the accent (e.g., hyperlink, button, etc) colors
    primary = "#023743", secondary = "#A4BED5",
    
    body_bg = "#EAF2F9",
    
    success = "#72874E",
    info = "#453947",
    warning = "#FED789",
    danger = "#7D1A04",
    
    base_font = font_google("DM Sans", local = TRUE),
    code_font = font_google("DM Mono", local = TRUE),
    heading_font = font_google("Lora", local = TRUE)
    
    # "link-color" = "info",
    # "link-hover-color" = "darken(link-color, 25%)",
    # "emphasized-link-hover-darken-percentage" = "25%",

  )
  
  bs_theme_preview(theme)
  
  # Lower-level bs_add_*() functions allow you to work more
  # directly with the underlying Sass code
  theme <- bs_add_variables(theme, "my-class-color" = "red")
  theme <- bs_add_rules(theme, ".my-class { color: $my-class-color }")


# variable <- "$body-bg: red;"
# rule <- "body { background-color: $body-bg; }"
# sass(input = list(variable, rule))

# user_default <- list("body-bg" = "blue !default")
# default <- list("body-bg" = "red !default")
# 
# sass(input = list(user_default, default, rule))
sass(sass_file("styles.scss"))
# to compile sass file:
#ass(sass_file("my-style.scss")
# in _quarto.yml
# format:
#   html:
#   theme: 
#   light: assets/ek-theme-light.scss
# dark: assets/ek-theme-dark.scss
# css: assets/ek-styles.css
# code-block-border-left: true
# highlight-style: 
#   light: assets/ek-light.theme
# dark: assets/ek-dark.theme
# smooth-scroll: true
# link-external-newwindow: true


