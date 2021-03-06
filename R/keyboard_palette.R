#' Keyboard palettes
#'
#' Built-in palettes for keyboards.
#'
#' There are four palettes available:
#' * "pastel" is just cute.
#' * "serika" is based off the [Drop + Zambumon MT3 Serika Custom Keycap Set](https://drop.com/buy/drop-zambumon-mt3-serika-custom-keycap-set).
#' * "wahtsy" is based off the [Melgeek MG Wahtsy ABS Doubleshot Keycap Set](https://drop.com/buy/melgeek-mg-wahtsy-abs-doubleshot-keycap-set).
#' * "cyberpunk" is based off the [Domikey ABS Doubleshot SA Cyberpunk Pumper Keycap Set](https://drop.com/buy/domikey-abs-doubleshot-sa-cyberpunk-pumper-keycap-set).
#' * "magic" is based off the [Apple magic keyboard](https://www.apple.com/shop/product/MLA22LL/A/magic-keyboard-us-english).
#' * "varmilo" is based off the [Varmilo VA108 Fullsize Keyboard](https://drop.com/buy/varmilo-108-keyboard).
#' * "t0mb3ry" is based off the [Drop + T0mb3ry SA Yuri Custom Keycap Set](https://drop.com/buy/drop-t0mb3ry-sa-yuri-custom-keycap-set)
#'
#' The palettes have the following fields:
#' * background: Colour of background.
#' * keyboard: Colour of keyboard.
#' * alphanumeric: Colour of alpha-numeric keys and other common text keys (e.g. <, :, etc).
#' * accent: Colour of accent keys (F1-4, F9-12, and the spacebar).
#' * modifier: Colour of modifier keys (e.g. Shift, Print, Insert, etc).
#' * numpad: Colour of numpad (non-modifier) keys (1-9).
#' * arrow: Colour of arrow-pad keys.
#' * light: Colour of lights on the keyboards.
#' * text: Text colour.
#'
#' @param palette Name of palette.
#' @export
#' @examples
#' \dontrun{
#' library(scales)
#' show_col(keyboard_palette("pastel"))
#'
#' ggkeyboard(palette = keyboard_palette("cyberpunk"))
#' }
keyboard_palette <- function(palette = c("pastel", "serika", "wahtsy", "cyberpunk", "magic", "varmilo", "t0mb3ry")) {

  palette <- match.arg(palette)

  switch(palette,
    pastel = c(
      background = "#fce9d0",
      keyboard = "#fbbcb8",
      alphanumeric = "#bfdff6",
      accent = "#a3e3c4",
      modifier = "#78baeb",
      numpad = "#bfdff6",
      arrow = "#c1b3ef",
      light = "#F9958F",
      text = "#5F5F5F"
    ),
    serika = c(
      background = "lightgrey",
      keyboard = "#51504A",
      alphanumeric = "#EDEDD8",
      accent = "#454A49",
      modifier = "#ffce00",
      numpad = "#EDEDD8",
      arrow = "#454A49",
      light = "#8aff2b",
      text = "#5F5F5F"
    ),
    wahtsy = c(
      background = "#F0F0F0",
      keyboard = "#E5E7EB",
      alphanumeric = "#DFDED9",
      accent = "#F9B668",
      modifier = "#155E90",
      numpad = "#DFDED9",
      arrow = "#155E90",
      light = "#CBCFD7",
      text = "#f97600"
    ),
    cyberpunk = c(
      background = "#F0F0F0",
      keyboard = "#313131",
      alphanumeric = "#6F4CA4",
      accent = "#00A8E8",
      modifier = "#FF4893",
      numpad = "#6F4CA4",
      arrow = "#00A8E8",
      light = "#2C2C2C",
      text = "white"
    ),
    magic = c(
      background = "white",
      keyboard = "#c8cad0",
      alphanumeric = "white",
      accent = "white",
      modifier = "white",
      numpad = "white",
      arrow = "white",
      light = "white",
      text = "darkgrey"
    ),
    varmilo = c(
      background = "#707173",
      keyboard = "#DDE3E7",
      alphanumeric = "#ffdde2",
      accent = "#ffdde2",
      modifier = "#a0d8f3",
      numpad = "#ffdde2",
      arrow = "#a0d8f3",
      light = "#9FD2FF",
      text = "#456DC1"
    ),
    t0mb3ry = c(
      background = "white",
      keyboard = "#423F40",
      alphanumeric = "#B2D2F2",
      accent = "#ff4619",
      modifier = "#29384E",
      numpad = "#B2D2F2",
      arrow = "#29384E",
      light = "#ff4619",
      text = "#ff5b33"
    )
  )
}
