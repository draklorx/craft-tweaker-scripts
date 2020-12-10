#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.slab.BlockBuilderSlab;

var colors = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "light_gray",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black"
] as string[];

for color in colors {
    new BlockBuilder(<blockmaterial:wool>)
        .withHardnessAndResistance(0.8f)
        .withHarvestLevel(0)
        .withType<BlockBuilderSlab>()
        .withTopTexture(<resource:minecraft:${color}_wool>)
        .withBottomTexture(<resource:minecraft:${color}_wool>)
        .withSideTexture(<resource:minecraft:${color}_wool>)
        .build(color + "_wool_slab");
}