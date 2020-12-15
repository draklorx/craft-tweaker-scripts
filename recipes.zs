furnace.addRecipe("rotten_flesh_to_leather_recipe", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 0.7, 200);

// Horse Armor and Saddles
craftingTable.addShaped("saddle_recipe", <item:minecraft:saddle>, [
  [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
  [<item:minecraft:leather>, <item:minecraft:iron_ingot>, <item:minecraft:leather>],
  [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>]
]);
craftingTable.addShaped("iron_horse_armor_recipe", <item:minecraft:iron_horse_armor>, [
  [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
  [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("golden_horse_armor_recipe", <item:minecraft:golden_horse_armor>, [
  [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("diamond_horse_armor_recipe", <item:minecraft:diamond_horse_armor>, [
  [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>],
  [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
  [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>]
]);

// Destructuring recipes
craftingTable.addShapeless("wool_to_string_recipe", <item:minecraft:string> * 4, [<tag:items:minecraft:wool>]);

craftingTable.addShaped("name_tag_recipe", <item:minecraft:name_tag>, [
    [<item:minecraft:chain>],
    [<item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("bell_recipe", <item:minecraft:bell>, [
  [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
  [<item:minecraft:gold_ingot>, <item:minecraft:chain>, <item:minecraft:gold_ingot>],
  [<item:minecraft:gold_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("dark_oak_sapling_recipe", <item:minecraft:dark_oak_sapling> * 4, [
  [<item:minecraft:air>, <item:minecraft:oak_sapling>, <item:minecraft:air>],
  [<item:minecraft:oak_sapling>, <item:minecraft:black_dye>, <item:minecraft:oak_sapling>],
  [<item:minecraft:air>, <item:minecraft:oak_sapling>, <item:minecraft:air>]
]);
craftingTable.addShaped("red_sand_recipe", <item:minecraft:red_sand> * 8, [
  [<item:minecraft:sand>, <item:minecraft:sand>, <item:minecraft:sand>],
  [<item:minecraft:sand>, <item:minecraft:red_dye>, <item:minecraft:sand>],
  [<item:minecraft:sand>, <item:minecraft:sand>, <item:minecraft:sand>]
]);

craftingTable.addShaped("paper_from_bamboo", <item:minecraft:paper> * 3, [
  [<item:minecraft:bamboo>, <item:minecraft:bamboo>, <item:minecraft:bamboo>],
  [<item:minecraft:air>, <item:minecraft:water_bucket>, <item:minecraft:air>]
]);

// Block recipes
craftingTable.addShaped("magma_block_recipe", <item:minecraft:magma_block> * 8, [
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:lava_bucket>, <item:minecraft:cobblestone>],
  [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
]);
craftingTable.addShaped("sponge_recipe", <item:minecraft:sponge> * 4, [
  [<item:minecraft:air>, <item:minecraft:yellow_wool>, <item:minecraft:air>],
  [<item:minecraft:yellow_wool>, <item:minecraft:pufferfish>, <item:minecraft:yellow_wool>],
  [<item:minecraft:air>, <item:minecraft:yellow_wool>, <item:minecraft:air>]
]);

// Chainmail
craftingTable.addShaped("chainmail_boots_recipe", <item:minecraft:chainmail_boots>, [
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_helmet_recipe", <item:minecraft:chainmail_helmet>, [
  [<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_leggings_recipe", <item:minecraft:chainmail_leggings>, [
  [<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_chestplate_recipe", <item:minecraft:chainmail_chestplate>, [
  [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
  [<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>]
]);


craftingTable.removeRecipe(<item:minecraft:golden_apple>);
craftingTable.removeByName("buildersaddition:reverse_acacia_slab");
craftingTable.removeByName("buildersaddition:reverse_birch_slab");
craftingTable.removeByName("buildersaddition:reverse_crimson_slab");
craftingTable.removeByName("buildersaddition:reverse_dark_oak_slab");
craftingTable.removeByName("buildersaddition:reverse_jungle_slab");
craftingTable.removeByName("buildersaddition:reverse_oak_slab");
craftingTable.removeByName("buildersaddition:reverse_spruce_slab");
craftingTable.removeByName("buildersaddition:reverse_warped_slab");

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
  craftingTable.removeByName("comforts:sleeping_bag_"+color);
  craftingTable.addShaped("sleeping_bag_"+color, <item:comforts:sleeping_bag_${color}>, [
    [<item:minecraft:${color}_carpet>, <item:minecraft:${color}_carpet>, <item:minecraft:${color}_carpet>],
    [<item:minecraft:${color}_carpet>, <item:minecraft:${color}_carpet>, <item:minecraft:${color}_carpet>]
  ]);
}