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

COMMON_RETRIEVE_NOTE_WESTERN_BLOT_WASH <- stringr::str_c(
  "**Washing.** To wash, submerge the PVDF membrane in the wash solution and let rock at 3 rpm for 5 minutes.")

COMMON_RETRIEVE_NOTE_RESUSPENSION <- stringr::str_c(
  "**Resuspending the cell pellet.** Some cell pellets are stubborn, and cannot be fully resuspended. ",
  "In these cases, you might consider letting the remaining cell pellet settle to the bottom of the microcentrifuge tube, and aspirating only the supernatant cell suspension to the recipient flask or well. ",
  "If the cells are precious, then the cell pellet can be placed into its own additional flask or well. ")

COMMON_RETRIEVE_WARNING_BSC <- stringr::str_c(
  "**Using the biosafety cabinet (BSC).** ",
  "To set-up the BSC, first warm up the fans by letting run for five minutes. ",
  "Then, decontaminate all items and surfaces within the BSC with ethanol, going from left-to-right. ",
  "Finally, run the UV lamp for 15 minutes. ",
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

COMMON_RETRIEVE_WARNING_THERMOMIXER <- stringr::str_c(
  "**Using the thermomixer.** ",
  "If heating a solution at high temperatures, weigh the plastic cover of the thermomixer down to avoid the caps from popping off. ",
  "Let the thermomixer cool to room temperature before turning it off.")

COMMON_RETRIEVE_WARNING_METHANOL <- stringr::str_c(
  "**Disposal of methanol.** ",
  "Methanol and methanol-containing solutions such as the transfer buffer must be disposed as chemical waste.")

COMMON_RETRIEVE_WARNING_TRYPSIN_STORAGE <- stringr::str_c(
  "**Minimize the time trypsin spends outside of the fridge.** ",
  "To avoid the degradation of trypsin, possibly due to self-digestion; aliquot a small amount of trypsin for use in the BSC, and minimize the amount of time that aliquot spends outside the fridge. ",
  "Generally, cells can handle the addition of 4°C trypsin.")
