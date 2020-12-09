var woodTypes = {
    "wood": ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"],
    "hyphae": ["crimson", "warped"]
} as string[][string];

for woodType, woods in woodTypes {
    var trunkName = woodType == "wood" ? "log" : "stem";
    for wood in woods {
        craftingTable.addShaped("stripped_" + wood + "_stairs_recipe", <item:contenttweaker:stripped_${wood}_stairs> * 4, [
            [<item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:air>],
            [<item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:stripped_${wood}_${trunkName}>]
        ]);
        craftingTable.addShaped(wood + "_" + woodType + "_stairs_recipe", <item:contenttweaker:${wood}_${woodType}_stairs> * 4, [
            [<item:minecraft:${wood}_${trunkName}>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>, <item:minecraft:air>],
            [<item:minecraft:${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>]
        ]);
        craftingTable.addShaped("stripped_" + wood + "_slab_recipe", <item:contenttweaker:stripped_${wood}_slab> * 6, [
            [<item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:stripped_${wood}_${trunkName}>]
        ]);
        craftingTable.addShaped(wood + "_" + woodType + "slab_recipe", <item:contenttweaker:${wood}_${woodType}_slab> * 6, [
            [<item:minecraft:${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>]
        ]);

        <tag:blocks:minecraft:stairs>.add(<blockstate:contenttweaker:stripped_${wood}_stairs>);
        <tag:blocks:minecraft:wooden_stairs>.add(<blockstate:contenttweaker:${wood}_${woodType}_stairs>);
        <tag:items:minecraft:stairs>.add(<item:contenttweaker:stripped_${wood}_stairs>);
        <tag:items:minecraft:wooden_stairs>.add(<item:contenttweaker:${wood}_${woodType}_stairs>);

        <tag:blocks:minecraft:slab>.add(<blockstate:contenttweaker:stripped_${wood}_slab>);
        <tag:blocks:minecraft:wooden_slab>.add(<blockstate:contenttweaker:${wood}_${woodType}_slab>);
        <tag:items:minecraft:slab>.add(<item:contenttweaker:stripped_${wood}_slab>);
        <tag:items:minecraft:wooden_slab>.add(<item:contenttweaker:${wood}_${woodType}_slab>);
    }
}