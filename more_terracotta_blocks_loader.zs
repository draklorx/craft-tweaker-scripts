#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
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
    new BlockBuilder(<blockmaterial:rock>)
        .withHardnessAndResistance(1.25f, 4.2f)
        .withHarvestTool(<tooltype:pickaxe>)
        .withHarvestLevel(1)
        .withType<BlockBuilderStairs>()
        .withTopTexture(<resource:minecraft:${color}_terracotta>)
        .withBottomTexture(<resource:minecraft:${color}_terracotta>)
        .withSidesTexture(<resource:minecraft:${color}_terracotta>)
        .build(color+"_terracotta_stairs");

    new BlockBuilder(<blockmaterial:rock>)
        .withHardnessAndResistance(1.25f, 4.2f)
        .withHarvestTool(<tooltype:pickaxe>)
        .withHarvestLevel(1)
        .withType<BlockBuilderSlab>()
        .withTopTexture(<resource:minecraft:${color}_terracotta>)
        .withBottomTexture(<resource:minecraft:${color}_terracotta>)
        .withSideTexture(<resource:minecraft:${color}_terracotta>)
        .build(color+"_terracotta_slab");
}

new BlockBuilder(<blockmaterial:rock>)
    .withHardnessAndResistance(1.25f, 4.2f)
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withType<BlockBuilderStairs>()
    .withTopTexture(<resource:minecraft:terracotta>)
    .withBottomTexture(<resource:minecraft:terracotta>)
    .withSidesTexture(<resource:minecraft:terracotta>)
    .build("terracotta_stairs");

new BlockBuilder(<blockmaterial:rock>)
    .withHardnessAndResistance(1.25f, 4.2f)
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withType<BlockBuilderSlab>()
    .withTopTexture(<resource:minecraft:terracotta>)
    .withBottomTexture(<resource:minecraft:terracotta>)
    .withSideTexture(<resource:minecraft:terracotta>)
    .build("terracotta_slab");