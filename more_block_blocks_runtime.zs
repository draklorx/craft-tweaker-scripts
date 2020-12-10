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
  craftingTable.addShaped(block + "_stairs_recipe", <item:contenttweaker:${block}_stairs> * 4, [
    [<item:minecraft:${block}_block>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:${block}_block>, <item:minecraft:${block}_block>, <item:minecraft:air>],
    [<item:minecraft:${block}_block>, <item:minecraft:${block}_block>, <item:minecraft:${block}_block>]
  ]);
  craftingTable.addShaped(block + "_slab_recipe", <item:contenttweaker:${block}_slab> * 6, [
    [<item:minecraft:${block}_block>, <item:minecraft:${block}_block>, <item:minecraft:${block}_block>]
  ]);

  stoneCutter.addRecipe(block + "_stairs_stone_cutter_recipe", <item:contenttweaker:${block}_stairs>, <item:minecraft:${block}_block>);
  stoneCutter.addRecipe(block + "_slab_stone_cutter_recipe", <item:contenttweaker:${block}_slab> * 2, <item:minecraft:${block}_block>);

  <tag:blocks:minecraft:stairs>.add(<blockstate:contenttweaker:${block}_stairs>);
  <tag:blocks:minecraft:slabs>.add(<blockstate:contenttweaker:${block}_slab>);
  <tag:items:minecraft:stairs>.add(<item:contenttweaker:${block}_stairs>);
  <tag:items:minecraft:slabs>.add(<item:contenttweaker:${block}_slab>);
}

<tag:items:minecraft:piglin_loved>.add(<item:contenttweaker:gold_stairs>);
<tag:items:minecraft:piglin_loved>.add(<item:contenttweaker:gold_slab>);