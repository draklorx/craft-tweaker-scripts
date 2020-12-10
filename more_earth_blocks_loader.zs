#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.slab.BlockBuilderSlab;

var blocks = [
    "dirt",
    "gravel",
    "clay",
    "coarse_dirt",
    "sand",
    "red_sand"
] as string[];

for block in blocks {
    new BlockBuilder(<blockmaterial:earth>)
        .withHardnessAndResistance(0.5f)
        .withHarvestTool(<tooltype:shovel>)
        .withHarvestLevel(0)
        .withType<BlockBuilderSlab>()
        .withTopTexture(<resource:minecraft:${block}>)
        .withBottomTexture(<resource:minecraft:${block}>)
        .withSideTexture(<resource:minecraft:${block}>)
        .build(block + "_slab");
}