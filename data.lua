data:extend({
  {
    type = "recipe",
    name = "battery_charger_recipe",
    enabled = true,
    ingredients = {
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "electronic-circuit", amount = 5}
    },
    results = {{type = "item", name = "battery_charger_item", amount = 1}}
  },
  {
    type = "recipe",
    name = "battery_discharger_recipe",
    enabled = true,
    ingredients = {
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "electronic-circuit", amount = 5}
    },
    results = {{type = "item", name = "battery_discharger_item", amount = 1}}
  },
  {
    type = "recipe",
    name = "battery_empty_recipe",
    enabled = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "battery", amount = 10},
      {type = "item", name = "copper-plate", amount = 20},
      {type = "item", name = "iron-plate", amount = 15}
    },
    results = {{type = "item", name = "battery_empty", amount = 2}}
  },

  {
    type = "item",
    name = "battery_charger_item",
    icon = "__Batteries__/graphics/charger.png",
    icon_size = 128,
    subgroup = "storage",
    order = "a",
    place_result = "battery_charger",
    stack_size = 20,
  },
  {
    type = "item",
    name = "battery_discharger_item",
    icon = "__Batteries__/graphics/charger.png",
    icon_size = 128,
    subgroup = "storage",
    order = "a",
    place_result = "battery_discharger",
    stack_size = 25
  },

  {
    type = "assembling-machine",
    name = "battery_charger",
    crafting_categories = {"battery_charger"},
    icon = "__Batteries__/graphics/charger.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "battery_charger_item"},
    max_health = 200,
    crafting_speed = 1.0,
    energy_usage = "2MW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},

    -- В Factorio 2.0 графика сборочного автомата задаётся через graphics_set
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Batteries__/graphics/charger.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 1,
            repeat_count = 1,
            scale = 0.5,
            shift = {0, 0}
          }
        }
      },
      idle_animation = {
        layers = {
          {
            filename = "__Batteries__/graphics/charger.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 1,
            repeat_count = 1,
            scale = 0.5,
            shift = {0, 0}
          }
        }
      }
    }
  },

  {
    type = "burner-generator",
    name = "battery_discharger",
    icon = "__Batteries__/graphics/charger.png",
    icon_size = 128,
    max_power_output = "1.5MW",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "battery_discharger_item"},
    max_health = 200,
    energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
    burner = {
      type = "burner",
      fuel_categories = {"battery-fuel"},
      fuel_inventory_size = 5,
      burnt_inventory_size = 10,
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},

    idle_animation = {
      north = {
        filename = "__Batteries__/graphics/charger.png",
        width = 128,
        height = 128,
        frame_count = 1,
        scale = 0.5,
        shift = {0, 0}
      }
    },

    animation = {
      north = {
        filename = "__Batteries__/graphics/charger.png",
        width = 128,
        height = 128,
        frame_count = 1,
        scale = 0.5,
        shift = {0, 0}
      }
    }
  },

  {
    type = "recipe",
    name = "battery_charging",
    enabled = true,
    category = "battery_charger",
    ingredients = {
      {type = "item", name = "battery_empty", amount = 1}
    },
    results = {
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
  },

  { type = "fuel-category", name = "battery-fuel" },
  { type = "recipe-category", name = "battery_charger" }
})