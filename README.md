# \# Batteries

# 

# A lightweight, vanilla-friendly mod for \*\*Factorio 2.0\*\* that adds a rechargeable battery loop.  

# Charge empty batteries, use charged batteries as fuel, and discharge them back into power — while recovering the empty shells to repeat the cycle.

# 

# Perfect for players who want compact energy storage, remote power setups, or a more interesting alternative to plain fuel-burning generators.

# 

# \## Features

# 

# \* 🔋 \*\*New Technology:\*\* Unlock the battery charging process after advanced electronics and battery production.

# \* ⚡ \*\*Battery Charger:\*\* A powered machine that turns Empty Batteries into Charged Batteries.

# \* 🔌 \*\*Battery Discharger:\*\* A burner generator that consumes Charged Batteries and produces electricity.

# \* ♻️ \*\*Closed Loop:\*\* Empty Battery → Charged Battery → Burn → Empty Battery.

# \* 🧱 \*\*Vanilla-Friendly:\*\* Uses familiar materials and fits naturally into existing production chains.

# 

# \## Balanced Mechanics

# 

# \### Technology: Battery Charging

# 

# \* \*\*Prerequisites:\*\* Logistics, Electronics, Steel Processing, Battery

# \* \*\*Cost:\*\* 200x Automation Science Pack, 200x Logistic Science Pack

# \* \*\*Time per Unit:\*\* 40 seconds

# \* \*\*Unlocks:\*\*

# &#x20; \* Battery Charger recipe

# &#x20; \* Battery Discharger recipe

# &#x20; \* Battery Charging recipe

# &#x20; \* Empty Battery recipe

# 

# \### Recipe: Empty Battery

# 

# \* \*\*Crafting Machine:\*\* Assembling Machine

# \* \*\*Crafting Time:\*\* 5 seconds

# \* \*\*Ingredients:\*\*

# &#x20; \* 10x Battery

# &#x20; \* 20x Copper Plate

# &#x20; \* 15x Iron Plate

# \* \*\*Results:\*\* 2x Empty Battery

# 

# \### Recipe: Battery Charging

# 

# \* \*\*Crafting Machine:\*\* Battery Charger

# \* \*\*Crafting Time:\*\* 20 seconds

# \* \*\*Ingredients:\*\* 1x Empty Battery

# \* \*\*Results:\*\* 1x Charged Battery

# 

# \### Recipe: Battery Charger

# 

# \* \*\*Ingredients:\*\*

# &#x20; \* 10x Steel Plate

# &#x20; \* 5x Electronic Circuit

# \* \*\*Results:\*\* 1x Battery Charger

# 

# \### Recipe: Battery Discharger

# 

# \* \*\*Ingredients:\*\*

# &#x20; \* 10x Steel Plate

# &#x20; \* 5x Electronic Circuit

# \* \*\*Results:\*\* 1x Battery Discharger

# 

# \## Machines

# 

# \### Battery Charger

# 

# \* \*\*Type:\*\* Assembling Machine

# \* \*\*Crafting Speed:\*\* 1.0

# \* \*\*Power Usage:\*\* 2 MW

# \* \*\*Purpose:\*\* Charges Empty Batteries into Charged Batteries.

# 

# \### Battery Discharger

# 

# \* \*\*Type:\*\* Burner Generator

# \* \*\*Max Power Output:\*\* 1.5 MW

# \* \*\*Fuel:\*\* Charged Batteries

# \* \*\*Fuel Inventory Size:\*\* 5

# \* \*\*Burnt Inventory Size:\*\* 10

# \* \*\*Purpose:\*\* Burns Charged Batteries to produce electricity. Returns Empty Batteries after burning.

# 

# \## Items

# 

# | Item | Stack Size | Notes |

# |---|---:|---|

# | Empty Battery | 70 | Used in the charging recipe |

# | Charged Battery | 50 | Fuel value: 35 MJ. Burns into Empty Battery |

# | Battery Charger | 20 | Places the Battery Charger machine |

# | Battery Discharger | 25 | Places the Battery Discharger machine |

# 

# \## How It Works

# 

# 1\. Research \*\*Battery Charging\*\*.

# 2\. Craft \*\*Empty Batteries\*\* from regular batteries, copper, and iron.

# 3\. Charge them in a \*\*Battery Charger\*\* to get \*\*Charged Batteries\*\*.

# 4\. Burn \*\*Charged Batteries\*\* in a \*\*Battery Discharger\*\* for power.

# 5\. Collect the \*\*Empty Batteries\*\* left behind and repeat the cycle.

# 

# \## Balance Notes

# 

# \* Charging one battery takes \*\*20 seconds\*\* at \*\*2 MW\*\*, costing about \*\*40 MJ\*\* of energy.

# \* One Charged Battery provides \*\*35 MJ\*\* when burned.

# \* The cycle loses about \*\*5 MJ\*\* per battery, so it is \*\*not free energy\*\*.

# \* The Discharger outputs up to \*\*1.5 MW\*\*, making it useful for backup power or remote outposts.

# \* The loop is designed to be useful, but not infinitely self-sustaining without external power input.

