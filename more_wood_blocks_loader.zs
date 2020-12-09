#loader contenttweaker
// More Wood Stairs

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.slab.BlockBuilderSlab;

var woodTypes = {
    "wood": ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"],
    "hyphae": ["crimson", "warped"]
} as string[][string];

for woodType, woods in woodTypes {
    var trunkName = woodType == "wood" ? "log" : "stem";
    for wood in woods {
        new BlockBuilder(<blockmaterial:wood>)
            .withHardnessAndResistance(2.0f)
            .withHarvestTool(<tooltype:axe>)
            .withHarvestLevel(0)
            .withType<BlockBuilderStairs>()
            .withTopTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .withBottomTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .withSidesTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .build("stripped_"+wood+"_stairs");

        new BlockBuilder(<blockmaterial:wood>)
            .withHardnessAndResistance(2.0f)
            .withHarvestTool(<tooltype:axe>)
            .withHarvestLevel(0)
            .withType<BlockBuilderStairs>()
            .withTopTexture(<resource:minecraft:${wood}_${trunkName}>)
            .withBottomTexture(<resource:minecraft:${wood}_${trunkName}>)
            .withSidesTexture(<resource:minecraft:${wood}_${trunkName}>)
            .build(wood+"_" + woodType + "_stairs");

        new BlockBuilder(<blockmaterial:wood>)
            .withHardnessAndResistance(2.0f)
            .withHarvestTool(<tooltype:axe>)
            .withHarvestLevel(0)
            .withType<BlockBuilderSlab>()
            .withTopTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .withBottomTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .withSideTexture(<resource:minecraft:stripped_${wood}_${trunkName}>)
            .build("stripped_"+wood+"_slab");

        new BlockBuilder(<blockmaterial:wood>)
            .withHardnessAndResistance(2.0f)
            .withHarvestTool(<tooltype:axe>)
            .withHarvestLevel(0)
            .withType<BlockBuilderSlab>()
            .withTopTexture(<resource:minecraft:${wood}_${trunkName}>)
            .withBottomTexture(<resource:minecraft:${wood}_${trunkName}>)
            .withSideTexture(<resource:minecraft:${wood}_${trunkName}>)
            .build(wood+"_" + woodType + "_slab");
    }
}