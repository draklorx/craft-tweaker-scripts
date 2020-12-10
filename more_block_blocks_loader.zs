#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.slab.BlockBuilderSlab;


var blocks = [
    "diamond",
    "emerald",
    "gold",
    "iron",
    "lapis",
    "netherite",
    "redstone"
] as string[];

for block in blocks {
    new BlockBuilder(<blockmaterial:iron>)
        .withHardnessAndResistance(3.0f, 6.0f)
        .withHarvestTool(<tooltype:pickaxe>)
        .withHarvestLevel(2)
        .withType<BlockBuilderStairs>()
        .withTopTexture(<resource:minecraft:${block}_block>)
        .withBottomTexture(<resource:minecraft:${block}_block>)
        .withSidesTexture(<resource:minecraft:${block}_block>)
        .build(block + "_stairs");

    new BlockBuilder(<blockmaterial:iron>)
        .withHardnessAndResistance(3.0f, 6.0f)
        .withHarvestTool(<tooltype:pickaxe>)
        .withHarvestLevel(2)
        .withType<BlockBuilderSlab>()
        .withTopTexture(<resource:minecraft:${block}_block>)
        .withBottomTexture(<resource:minecraft:${block}_block>)
        .withSideTexture(<resource:minecraft:${block}_block>)
        .build(block + "_slab");
}