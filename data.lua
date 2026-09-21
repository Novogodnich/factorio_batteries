data:extend({
  {
    type = "item",
    name = "battery_charger_item",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 64,
    subgroup = "storage",
    order = "a",
    place_result = "battery_charger",
    stack_size = 20
  },
  {
    type = "assembling-machine",
    crafting_categories = {"battery_charger"},
    name = "battery_charger",
    icon = "__base__/graphics/icons/substation.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "battery_charger_item"},
    max_health = 200,
    crafting_speed = 1.0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "2MW",
    animation =
    {
      filename = "__base__/graphics/entity/substation/substation.png",
      priority = "extra-high",
      width = 70,
      height = 136,
      frame_count = 1,
      scale = 0.5
    }
  },
  {
    type = "item",
    name = "battery_discharger_item",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 64,
    subgroup = "storage",
    order = "a",
    place_result = "battery_discharger",
    stack_size = 25
  },
  {
    type = "burner-generator",
    name = "battery_discharger",
    max_power_output = "1.5MW",
    minable = {mining_time = 0.8, result = "battery_discharger_item"},
    flags = {"placeable-neutral", "player-creation"},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output"
    }, burner = {
        type = "burner",
        fuel_categories = {"battery-fuel"},
        fuel_inventory_size = 5,
        burnt_inventory_size = 10,
    },
    animation = {
      filename = "__base__/graphics/entity/substation/substation.png",
      priority = "extra-high",
      width = 70,
      height = 136,
      frame_count = 1,
      scale = 0.5
    }
  },
  {
    type = "recipe",
    name = "battery_charging",
    enabled = true,
    category = "battery_charger",
    ingredients =
    {
      {type = "item", name = "battery_empty", amount = 1}
    },
    results =
    {
      {type = "item", name = "battery_charged", amount = 1}
    },
    energy_required = 20
  },
  {
    type = "item",
    name = "battery_charged",
    icon = "__base__/graphics/icons/battery.png",
    icon_size = 64,
    subgroup = "raw-material",
    order = "z[super-plate]",
    stack_size = 50,
    fuel_category = "battery-fuel",
    fuel_value = "35MJ", 
    burnt_result = "battery_empty"
  },
  {
    type = "item",
    name = "battery_empty",
    icon = "__base__/graphics/icons/battery.png",
    icon_size = 64,
    subgroup = "raw-material",
    order = "z[super-plate]",
    stack_size = 70
  }
})
