var woodTypes = {
    "wood": ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"],
    "hyphae": ["crimson", "warped"]
} as string[][string];


for woodType, woods in woodTypes {
    var trunkName = woodType == "wood" ? "log" : "stem";
    for wood in woods {
        if stoneCutter.getRecipesByOutput(<item:minecraft:${wood}_stairs>).isEmpty {
            stoneCutter.addRecipe(wood + "stairs_stone_cutter_recipe", <item:minecraft:${wood}_stairs>, <item:minecraft:${wood}_planks>);
        }
        if stoneCutter.getRecipesByOutput(<item:minecraft:${wood}_slab>).isEmpty {
            stoneCutter.addRecipe(wood + "slab_stone_cutter_recipe", <item:minecraft:${wood}_slab> * 2, <item:minecraft:${wood}_planks>);
        }
        if stoneCutter.getRecipesByOutput(<item:minecraft:stripped_${wood}_${trunkName}>).isEmpty {
            stoneCutter.addRecipe("stripped" + wood + "_" + trunkName + "stone_cutter_recipe", <item:minecraft:stripped_${wood}_${trunkName}>, <item:minecraft:${wood}_${trunkName}>);
        }
    }
}