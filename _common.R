# example R options set globally
options(width = 60)

# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
  )

COMMON_GET_GIT_COMMIT <- function()
  stringr::str_glue(
    "{commit}{maybe_dirty}",
    commit=system2("git", c("rev-parse", "--short=7", "HEAD"), stdout=TRUE),
    maybe_dirty=ifelse(
      identical(system2("git", c("status", "--porcelain"), stdout=TRUE), character(0)),
      "", "-dirty"))

COMMON_RETRIEVE_WARNING_BSC <- stringr::str_c(
  "**Using the biosafety cabinet (BSC).** ",
  "Decontaminate the BSC by wiping down all items and surfaces with ethanol, and 15 minutes of UV disinfection. ",
  "Before placing an item into the BSC, decontaminate with ethanol; this applies also to gloved hands. ",
  "At the end of the protocol, re-arrange all items in the BSC to their original positions, and decontaminate all items and surfaces with ethanol.")

COMMON_RETRIEVE_WARNING_WATER_BATH <- stringr::str_c(
  "**Using the water bath.** ",
  "Water baths can be a source of contamination. ",
  "To minimize this risk, only submerge liquid containers partially, ensuring that the water level is always beneath the container cap. ",
  "Immediately after removing an item from the water bath, wipe down to dry and decontaminate with ethanol.")

COMMON_RETRIEVE_WARNING_INCUBATOR <- stringr::str_c(
  "**Using the incubator.** ",
  "Before placing an item into the incubator, decontaminate with ethanol; this applies also to gloved hands. ",
  "Be gentle when closing and opening the incubator doors, so as to avoid disrupting any ongoing experiments in the incubator.")

COMMON_RETRIEVE_WARNING_CELL_CULTURE_WASTE <- stringr::str_c(
  "**Cell culture waste.** ",
  "Cell culture liquid waste should be disposed into a container of bleach (Clorox). ",
  "Containers which were used to handle cell cultures should be rinsed with bleach and let sit for five minutes. ")

COMMON_RETRIEVE_WARNING_MICROSCOPE <- stringr::str_c(
  "**Using the microscope.** ",
  "Remember to power down the microscope and cover with tarp to aid in the longevity of the instrument")
