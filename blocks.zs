#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.slab.BlockBuilderSlab;

new BlockBuilder(<blockmaterial:iron>)
    .withHardnessAndResistance(3.0f, 6.0f)
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(2)
    .withType<BlockBuilderStairs>()
    .withTopTexture(<resource:minecraft:gold_block>)
    .withBottomTexture(<resource:minecraft:gold_block>)
    .withSidesTexture(ignored => <resource:minecraft:gold_block>)
    .build("gold_stairs");