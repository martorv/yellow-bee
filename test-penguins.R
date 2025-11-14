library(palmerpenguins)

# plot body_mass_g ~ bill_length_mm
plot(body_mass_g ~ bill_length_mm, palmerpenguins::penguins)

# add another plot
plot(body_mass_g ~ species, palmerpenguins::penguins)
