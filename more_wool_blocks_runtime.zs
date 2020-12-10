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
  craftingTable.addShaped(color + "_wool_slab_recipe", <item:contenttweaker:${color}_wool_slab> * 6, [
    [<item:minecraft:${color}_wool>, <item:minecraft:${color}_wool>, <item:minecraft:${color}_wool>]
  ]);

  <tag:blocks:minecraft:slabs>.add(<blockstate:contenttweaker:${color}_wool_slab>);
  <tag:blocks:minecraft:wool>.add(<blockstate:contenttweaker:${color}_wool_slab>);
  <tag:items:minecraft:slabs>.add(<item:contenttweaker:${color}_wool_slab>);
  <tag:items:minecraft:wool>.add(<item:contenttweaker:${color}_wool_slab>);
}