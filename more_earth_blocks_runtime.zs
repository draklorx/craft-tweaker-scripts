var blocks = [
    "dirt",
    "gravel",
    "clay",
    "coarse_dirt",
    "sand",
    "red_sand"
] as string[];

for block in blocks {
  craftingTable.addShaped(block + "_slab_recipe", <item:contenttweaker:${block}_slab> * 6, [
    [<item:minecraft:${block}>, <item:minecraft:${block}>, <item:minecraft:${block}>]
  ]);

  <tag:blocks:minecraft:slabs>.add(<blockstate:contenttweaker:${block}_slab>);
  <tag:items:minecraft:slabs>.add(<item:contenttweaker:${block}_slab>);
}