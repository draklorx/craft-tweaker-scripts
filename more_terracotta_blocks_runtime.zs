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
  craftingTable.addShaped(color + "_terracotta_stairs_recipe", <item:contenttweaker:${color}_terracotta_stairs> * 4, [
    [<item:minecraft:${color}_terracotta>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:${color}_terracotta>, <item:minecraft:${color}_terracotta>, <item:minecraft:air>],
    [<item:minecraft:${color}_terracotta>, <item:minecraft:${color}_terracotta>, <item:minecraft:${color}_terracotta>]
  ]);
  craftingTable.addShaped(color + "_terracotta_slab_recipe", <item:contenttweaker:${color}_terracotta_slab> * 6, [
    [<item:minecraft:${color}_terracotta>, <item:minecraft:${color}_terracotta>, <item:minecraft:${color}_terracotta>]
  ]);

  stoneCutter.addRecipe(color + "_terracotta_stairs_stone_cutter_recipe", <item:contenttweaker:${color}_terracotta_stairs>, <item:minecraft:${color}_terracotta>);
  stoneCutter.addRecipe(color + "_terracotta_slab_stone_cutter_recipe", <item:contenttweaker:${color}_terracotta_slab> * 2, <item:minecraft:${color}_terracotta>);

  <tag:blocks:minecraft:stairs>.add(<blockstate:contenttweaker:${color}_terracotta_stairs>);
  <tag:blocks:minecraft:slabs>.add(<blockstate:contenttweaker:${color}_terracotta_slab>);
  <tag:items:minecraft:stairs>.add(<item:contenttweaker:${color}_terracotta_stairs>);
  <tag:items:minecraft:slabs>.add(<item:contenttweaker:${color}_terracotta_slab>);

}
craftingTable.addShaped("terracotta_stairs_recipe", <item:contenttweaker:terracotta_stairs> * 4, [
  [<item:minecraft:terracotta>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:air>],
  [<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:terracotta>]
]);
craftingTable.addShaped("terracotta_slab_recipe", <item:contenttweaker:terracotta_slab> * 6, [
  [<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:terracotta>]
]);
stoneCutter.addRecipe("terracotta_stairs_stone_cutter_recipe", <item:contenttweaker:terracotta_stairs>, <item:minecraft:terracotta>);
stoneCutter.addRecipe("terracotta_slab_stone_cutter_recipe", <item:contenttweaker:terracotta_slab> * 2, <item:minecraft:terracotta>);

<tag:blocks:minecraft:stairs>.add(<blockstate:contenttweaker:terracotta_stairs>);
<tag:blocks:minecraft:slabs>.add(<blockstate:contenttweaker:terracotta_slab>);
<tag:items:minecraft:stairs>.add(<item:contenttweaker:terracotta_stairs>);
<tag:items:minecraft:slabs>.add(<item:contenttweaker:terracotta_slab>);
