library(palmerpenguins)
library(ggplot2)

# making some edits
df <- palmerpenguins::penguins_raw

# plot body_mass_g ~ bill_length_mm
plot(body_mass_g ~ bill_length_mm, palmerpenguins::penguins)

# add another plot
plot(body_mass_g ~ species, palmerpenguins::penguins)

#making plots more *colourful* using ggplot
ggplot(data = penguins, aes(x = body_mass_g, y = bill_length_mm, colour = species))+
    geom_point(size = 3) +
    theme_classic()

# adding some fit lines
ggplot(data = penguins, aes(x = body_mass_g, y = bill_length_mm, colour = species))+
    geom_point(size = 3) +
    geom_smooth(method = "lm")+
    theme_classic()

ggsave("bill_length_bodymass.png")


#adding a boxplot
ggplot(data = penguins, aes(x = species, y = body_mass_g, fill = species)) +
    geom_boxplot(size = 1) +
    theme_classic()

ggsave("species_bodymass.png")
