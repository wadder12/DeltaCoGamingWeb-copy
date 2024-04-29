# Sample input data, replace this with your actual list
weapon_names = "JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F,"

# Split the string into an array of names
weapon_array = weapon_names.split(", ")

# Categorize weapons by their type
categories = {
    'arifle': [],
    'optic': [],
    'bipod': [],
    'muzzle': [],
    'srifle': []
}

# Populate categories
for weapon in weapon_array:
    if "arifle" in weapon:
        categories['arifle'].append(f'"{weapon}",')
    elif "optic" in weapon:
        categories['optic'].append(f'"{weapon}",')
    elif "bipod" in weapon:
        categories['bipod'].append(f'"{weapon}",')
    elif "muzzle" in weapon:
        categories['muzzle'].append(f'"{weapon}",')
    elif "srifle" in weapon:
        categories['srifle'].append(f'"{weapon}",')

# Write the formatted output to a .sqf file
with open("formatted_weapons.sqf", "w") as file:
    for category, items in categories.items():
        if items:  # Only write if there are items in the category
            file.write(f"// {category.capitalize()}s\n")
            file.write("\n".join(items) + "\n\n")

# Optional: Print a message to confirm the file has been written
print("Weapon names have been categorized and written to formatted_weapons.sqf")
weapon_names = "JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F, JCA_srifle_AWM_sand_F, JCA_srifle_AWM_olive_F, JCA_srifle_AWM_black_HPPO_F, JCA_srifle_AWM_black_HPPO_snds_F, JCA_srifle_AWM_black_HPPO_RAD_F, JCA_srifle_AWM_black_HPPO_RAD_snds_F, JCA_srifle_AWM_sand_HPPO_F, JCA_srifle_AWM_sand_HPPO_snds_F, JCA_srifle_AWM_sand_HPPO_RAD_F, JCA_srifle_AWM_sand_HPPO_RAD_snds_F, JCA_srifle_AWM_olive_HPPO_F, JCA_srifle_AWM_olive_HPPO_snds_F, JCA_srifle_AWM_olive_HPPO_RAD_F, JCA_srifle_AWM_olive_HPPO_RAD_snds_F, JCA_optic_MRO_base, JCA_optic_MRO_black, JCA_optic_ICO_base, JCA_optic_ICO_black, JCA_optic_ICO_sand, JCA_optic_ICO_olive, JCA_optic_AHO_base, JCA_optic_AHO_black, JCA_optic_AHO_sand, JCA_optic_AHO_olive, JCA_optic_AICO_base, JCA_optic_AICO_black, JCA_optic_AICO_sand, JCA_optic_AICO_olive, JCA_optic_ACOG_base, JCA_optic_ACOG_black, JCA_optic_ACOG_sand, JCA_optic_ACOG_olive, JCA_optic_MRPS_base, JCA_optic_MRPS_black, JCA_optic_MRPS_sand, JCA_optic_MRPS_olive, JCA_muzzle_snds_556_tactical_black, JCA_muzzle_snds_556_tactical_sand, JCA_muzzle_snds_556_tactical_olive, JCA_muzzle_snds_762_tactical_black, JCA_muzzle_snds_762_tactical_sand, JCA_muzzle_snds_762_tactical_olive, JCA_muzzle_snds_SR25_base, JCA_muzzle_snds_SR25_black, JCA_muzzle_snds_SR25_sand, JCA_muzzle_snds_SR25_olive, JCA_bipod_04_base, JCA_bipod_04_black, JCA_bipod_04_sand, JCA_bipod_04_olive, JCA_acc_LaserModule_base_Pointer, JCA_acc_LaserModule_base_Laser, JCA_acc_LaserModule_black_Pointer, JCA_acc_LaserModule_black_Laser_Red, JCA_acc_LaserModule_black_Laser_Green, JCA_acc_LaserModule_sand_Pointer, JCA_acc_LaserModule_sand_Laser_Red, JCA_acc_LaserModule_sand_Laser_Green, JCA_acc_LaserModule_olive_Pointer, JCA_acc_LaserModule_olive_Laser_Red, JCA_acc_LaserModule_olive_Laser_Green, JCA_acc_DualMount_base_Pointer, JCA_acc_DualMount_base_Laser, JCA_acc_DualMount_base_Light, JCA_acc_DualMount_black_Pointer, JCA_acc_DualMount_black_Laser_Red, JCA_acc_DualMount_black_Laser_Green, JCA_acc_DualMount_black_Light, JCA_acc_DualMount_sand_Pointer, JCA_acc_DualMount_sand_Laser_Red, JCA_acc_DualMount_sand_Laser_Green, JCA_acc_DualMount_sand_Light, JCA_acc_DualMount_olive_Pointer, JCA_acc_DualMount_olive_Laser_Red, JCA_acc_DualMount_olive_Laser_Green, JCA_acc_DualMount_olive_Light, JCA_arifle_M4A1_black_F, JCA_arifle_M4A1_GL_black_F, JCA_arifle_M4A1_short_black_F, JCA_arifle_M4A1_sand_F, JCA_arifle_M4A1_GL_sand_F, JCA_arifle_M4A1_short_sand_F, JCA_arifle_M4A1_olive_F, JCA_arifle_M4A1_GL_olive_F, JCA_arifle_M4A1_short_olive_F, JCA_arifle_M4A1_black_ICO_F, JCA_arifle_M4A1_GL_black_ICO_F, JCA_arifle_M4A1_short_black_ICO_F, JCA_arifle_M4A1_black_ICO_snds_F, JCA_arifle_M4A1_GL_black_ICO_snds_F, JCA_arifle_M4A1_short_black_ICO_snds_F, JCA_arifle_M4A1_black_ICO_flashlight_F, JCA_arifle_M4A1_GL_black_ICO_flashlight_F, JCA_arifle_M4A1_short_black_ICO_flashlight_F, JCA_arifle_M4A1_black_ICO_laserModule_F, JCA_arifle_M4A1_GL_black_ICO_laserModule_F, JCA_arifle_M4A1_short_black_ICO_laserModule_F, JCA_arifle_M4A1_black_ICO_flashlight_snds_F, JCA_arifle_M4A1_GL_black_ICO_flashlight_snds_F, JCA_arifle_M4A1_short_black_ICO_flashlight_snds_F, JCA_arifle_M4A1_black_ICO_laserModule_snds_F, JCA_arifle_M4A1_GL_black_ICO_laserModule_snds_F, JCA_arifle_M4A1_short_black_ICO_laserModule_snds_F, JCA_arifle_M4A1_black_ACOG_F, JCA_arifle_M4A1_GL_black_ACOG_F, JCA_arifle_M4A1_short_black_ACOG_F, JCA_arifle_M4A1_black_ACOG_snds_F, JCA_arifle_M4A1_GL_black_ACOG_snds_F, JCA_arifle_M4A1_short_black_ACOG_snds_F, JCA_arifle_M4A1_black_ACOG_flashlight_F, JCA_arifle_M4A1_GL_black_ACOG_flashlight_F, JCA_arifle_M4A1_short_black_ACOG_flashlight_F, JCA_arifle_M4A1_black_ACOG_laserModule_F, JCA_arifle_M4A1_GL_black_ACOG_laserModule_F, JCA_arifle_M4A1_short_black_ACOG_laserModule_F, JCA_arifle_M4A1_black_ACOG_flashlight_snds_F, JCA_arifle_M4A1_GL_black_ACOG_flashlight_snds_F, JCA_arifle_M4A1_short_black_ACOG_flashlight_snds_F, JCA_arifle_M4A1_black_ACOG_laserModule_snds_F, JCA_arifle_M4A1_GL_black_ACOG_laserModule_snds_F, JCA_arifle_M4A1_short_black_ACOG_laserModule_snds_F, JCA_arifle_M4A1_sand_ICO_F, JCA_arifle_M4A1_GL_sand_ICO_F, JCA_arifle_M4A1_short_sand_ICO_F, JCA_arifle_M4A1_sand_ICO_snds_F, JCA_arifle_M4A1_GL_sand_ICO_snds_F, JCA_arifle_M4A1_short_sand_ICO_snds_F, JCA_arifle_M4A1_sand_ICO_flashlight_F, JCA_arifle_M4A1_GL_sand_ICO_flashlight_F, JCA_arifle_M4A1_short_sand_ICO_flashlight_F, JCA_arifle_M4A1_sand_ICO_laserModule_F, JCA_arifle_M4A1_GL_sand_ICO_laserModule_F, JCA_arifle_M4A1_short_sand_ICO_laserModule_F, JCA_arifle_M4A1_sand_ICO_flashlight_snds_F, JCA_arifle_M4A1_GL_sand_ICO_flashlight_snds_F, JCA_arifle_M4A1_short_sand_ICO_flashlight_snds_F, JCA_arifle_M4A1_sand_ICO_laserModule_snds_F, JCA_arifle_M4A1_GL_sand_ICO_laserModule_snds_F, JCA_arifle_M4A1_short_sand_ICO_laserModule_snds_F, JCA_arifle_M4A1_sand_ACOG_F, JCA_arifle_M4A1_GL_sand_ACOG_F, JCA_arifle_M4A1_short_sand_ACOG_F, JCA_arifle_M4A1_sand_ACOG_snds_F, JCA_arifle_M4A1_GL_sand_ACOG_snds_F, JCA_arifle_M4A1_short_sand_ACOG_snds_F, JCA_arifle_M4A1_sand_ACOG_flashlight_F, JCA_arifle_M4A1_GL_sand_ACOG_flashlight_F, JCA_arifle_M4A1_short_sand_ACOG_flashlight_F, JCA_arifle_M4A1_sand_ACOG_laserModule_F, JCA_arifle_M4A1_GL_sand_ACOG_laserModule_F, JCA_arifle_M4A1_short_sand_ACOG_laserModule_F, JCA_arifle_M4A1_sand_ACOG_flashlight_snds_F, JCA_arifle_M4A1_GL_sand_ACOG_flashlight_snds_F, JCA_arifle_M4A1_short_sand_ACOG_flashlight_snds_F, JCA_arifle_M4A1_sand_ACOG_laserModule_snds_F, JCA_arifle_M4A1_GL_sand_ACOG_laserModule_snds_F, JCA_arifle_M4A1_short_sand_ACOG_laserModule_snds_F, JCA_arifle_M4A1_olive_ICO_F, JCA_arifle_M4A1_GL_olive_ICO_F, JCA_arifle_M4A1_short_olive_ICO_F, JCA_arifle_M4A1_olive_ICO_snds_F, JCA_arifle_M4A1_GL_olive_ICO_snds_F, JCA_arifle_M4A1_short_olive_ICO_snds_F, JCA_arifle_M4A1_olive_ICO_flashlight_F, JCA_arifle_M4A1_GL_olive_ICO_flashlight_F, JCA_arifle_M4A1_short_olive_ICO_flashlight_F, JCA_arifle_M4A1_olive_ICO_laserModule_F, JCA_arifle_M4A1_GL_olive_ICO_laserModule_F, JCA_arifle_M4A1_short_olive_ICO_laserModule_F, JCA_arifle_M4A1_olive_ICO_flashlight_snds_F, JCA_arifle_M4A1_GL_olive_ICO_flashlight_snds_F, JCA_arifle_M4A1_short_olive_ICO_flashlight_snds_F, JCA_arifle_M4A1_olive_ICO_laserModule_snds_F, JCA_arifle_M4A1_GL_olive_ICO_laserModule_snds_F, JCA_arifle_M4A1_short_olive_ICO_laserModule_snds_F, JCA_arifle_M4A1_olive_ACOG_F, JCA_arifle_M4A1_GL_olive_ACOG_F, JCA_arifle_M4A1_short_olive_ACOG_F, JCA_arifle_M4A1_olive_ACOG_snds_F, JCA_arifle_M4A1_GL_olive_ACOG_snds_F, JCA_arifle_M4A1_short_olive_ACOG_snds_F, JCA_arifle_M4A1_olive_ACOG_flashlight_F, JCA_arifle_M4A1_GL_olive_ACOG_flashlight_F, JCA_arifle_M4A1_short_olive_ACOG_flashlight_F, JCA_arifle_M4A1_olive_ACOG_laserModule_F, JCA_arifle_M4A1_GL_olive_ACOG_laserModule_F, JCA_arifle_M4A1_short_olive_ACOG_laserModule_F, JCA_arifle_M4A1_olive_ACOG_flashlight_snds_F, JCA_arifle_M4A1_GL_olive_ACOG_flashlight_snds_F, JCA_arifle_M4A1_short_olive_ACOG_flashlight_snds_F, JCA_arifle_M4A1_olive_ACOG_laserModule_snds_F, JCA_arifle_M4A1_GL_olive_ACOG_laserModule_snds_F, JCA_arifle_M4A1_short_olive_ACOG_laserModule_snds_F, JCA_arifle_M4A4_AFG_base_F, JCA_arifle_M4A4_VFG_base_F, JCA_arifle_M4A4_AFG_black_F, JCA_arifle_M4A4_VFG_black_F, JCA_arifle_M4A4_GL_black_F, JCA_arifle_M4A4_AFG_sand_F, JCA_arifle_M4A4_VFG_sand_F, JCA_arifle_M4A4_GL_sand_F, JCA_arifle_M4A4_AFG_olive_F, JCA_arifle_M4A4_VFG_olive_F, JCA_arifle_M4A4_GL_olive_F, JCA_arifle_M4A4_AFG_black_AHO_F, JCA_arifle_M4A4_VFG_black_AHO_F, JCA_arifle_M4A4_GL_black_AHO_F, JCA_arifle_M4A4_AFG_black_AHO_snds_F, JCA_arifle_M4A4_VFG_black_AHO_snds_F, JCA_arifle_M4A4_GL_black_AHO_snds_F, JCA_arifle_M4A4_AFG_black_AHO_flashlight_F, JCA_arifle_M4A4_VFG_black_AHO_flashlight_F, JCA_arifle_M4A4_GL_black_AHO_flashlight_F, JCA_arifle_M4A4_AFG_black_AHO_laserModule_F, JCA_arifle_M4A4_VFG_black_AHO_laserModule_F, JCA_arifle_M4A4_GL_black_AHO_laserModule_F, JCA_arifle_M4A4_AFG_black_AHO_DualMount_F, JCA_arifle_M4A4_VFG_black_AHO_DualMount_F, JCA_arifle_M4A4_GL_black_AHO_DualMount_F, JCA_arifle_M4A4_AFG_black_AHO_flashlight_snds_F, JCA_arifle_M4A4_VFG_black_AHO_flashlight_snds_F, JCA_arifle_M4A4_GL_black_AHO_flashlight_snds_F, JCA_arifle_M4A4_AFG_black_AHO_laserModule_snds_F, JCA_arifle_M4A4_VFG_black_AHO_laserModule_snds_F, JCA_arifle_M4A4_GL_black_AHO_laserModule_snds_F, JCA_arifle_M4A4_AFG_black_AHO_DualMount_snds_F, JCA_arifle_M4A4_VFG_black_AHO_DualMount_snds_F, JCA_arifle_M4A4_GL_black_AHO_DualMount_snds_F, JCA_arifle_M4A4_AFG_black_AICO_F, JCA_arifle_M4A4_VFG_black_AICO_F, JCA_arifle_M4A4_GL_black_AICO_F, JCA_arifle_M4A4_AFG_black_AICO_snds_F, JCA_arifle_M4A4_VFG_black_AICO_snds_F, JCA_arifle_M4A4_GL_black_AICO_snds_F, JCA_arifle_M4A4_AFG_black_AICO_flashlight_F, JCA_arifle_M4A4_VFG_black_AICO_flashlight_F, JCA_arifle_M4A4_GL_black_AICO_flashlight_F, JCA_arifle_M4A4_AFG_black_AICO_laserModule_F, JCA_arifle_M4A4_VFG_black_AICO_laserModule_F, JCA_arifle_M4A4_GL_black_AICO_laserModule_F, JCA_arifle_M4A4_AFG_black_AICO_DualMount_F, JCA_arifle_M4A4_VFG_black_AICO_DualMount_F, JCA_arifle_M4A4_GL_black_AICO_DualMount_F, JCA_arifle_M4A4_AFG_black_AICO_flashlight_snds_F, JCA_arifle_M4A4_VFG_black_AICO_flashlight_snds_F, JCA_arifle_M4A4_GL_black_AICO_flashlight_snds_F, JCA_arifle_M4A4_AFG_black_AICO_laserModule_snds_F, JCA_arifle_M4A4_VFG_black_AICO_laserModule_snds_F, JCA_arifle_M4A4_GL_black_AICO_laserModule_snds_F, JCA_arifle_M4A4_AFG_black_AICO_DualMount_snds_F, JCA_arifle_M4A4_VFG_black_AICO_DualMount_snds_F, JCA_arifle_M4A4_GL_black_AICO_DualMount_snds_F, JCA_arifle_M4A4_AFG_sand_AHO_F, JCA_arifle_M4A4_VFG_sand_AHO_F, JCA_arifle_M4A4_GL_sand_AHO_F, JCA_arifle_M4A4_AFG_sand_AHO_snds_F, JCA_arifle_M4A4_VFG_sand_AHO_snds_F, JCA_arifle_M4A4_GL_sand_AHO_snds_F, JCA_arifle_M4A4_AFG_sand_AHO_flashlight_F, JCA_arifle_M4A4_VFG_sand_AHO_flashlight_F, JCA_arifle_M4A4_GL_sand_AHO_flashlight_F, JCA_arifle_M4A4_AFG_sand_AHO_laserModule_F, JCA_arifle_M4A4_VFG_sand_AHO_laserModule_F, JCA_arifle_M4A4_GL_sand_AHO_laserModule_F, JCA_arifle_M4A4_AFG_sand_AHO_DualMount_F, JCA_arifle_M4A4_VFG_sand_AHO_DualMount_F, JCA_arifle_M4A4_GL_sand_AHO_DualMount_F, JCA_arifle_M4A4_AFG_sand_AHO_flashlight_snds_F, JCA_arifle_M4A4_VFG_sand_AHO_flashlight_snds_F, JCA_arifle_M4A4_GL_sand_AHO_flashlight_snds_F, JCA_arifle_M4A4_AFG_sand_AHO_laserModule_snds_F, JCA_arifle_M4A4_VFG_sand_AHO_laserModule_snds_F, JCA_arifle_M4A4_GL_sand_AHO_laserModule_snds_F, JCA_arifle_M4A4_AFG_sand_AHO_DualMount_snds_F, JCA_arifle_M4A4_VFG_sand_AHO_DualMount_snds_F, JCA_arifle_M4A4_GL_sand_AHO_DualMount_snds_F, JCA_arifle_M4A4_AFG_sand_AICO_F, JCA_arifle_M4A4_VFG_sand_AICO_F, JCA_arifle_M4A4_GL_sand_AICO_F, JCA_arifle_M4A4_AFG_sand_AICO_snds_F, JCA_arifle_M4A4_VFG_sand_AICO_snds_F, JCA_arifle_M4A4_GL_sand_AICO_snds_F, JCA_arifle_M4A4_AFG_sand_AICO_flashlight_F, JCA_arifle_M4A4_VFG_sand_AICO_flashlight_F, JCA_arifle_M4A4_GL_sand_AICO_flashlight_F, JCA_arifle_M4A4_AFG_sand_AICO_laserModule_F, JCA_arifle_M4A4_VFG_sand_AICO_laserModule_F, JCA_arifle_M4A4_GL_sand_AICO_laserModule_F, JCA_arifle_M4A4_AFG_sand_AICO_DualMount_F, JCA_arifle_M4A4_VFG_sand_AICO_DualMount_F, JCA_arifle_M4A4_GL_sand_AICO_DualMount_F, JCA_arifle_M4A4_AFG_sand_AICO_flashlight_snds_F, JCA_arifle_M4A4_VFG_sand_AICO_flashlight_snds_F, JCA_arifle_M4A4_GL_sand_AICO_flashlight_snds_F, JCA_arifle_M4A4_AFG_sand_AICO_laserModule_snds_F, JCA_arifle_M4A4_VFG_sand_AICO_laserModule_snds_F, JCA_arifle_M4A4_GL_sand_AICO_laserModule_snds_F, JCA_arifle_M4A4_AFG_sand_AICO_DualMount_snds_F, JCA_arifle_M4A4_VFG_sand_AICO_DualMount_snds_F, JCA_arifle_M4A4_GL_sand_AICO_DualMount_snds_F, JCA_arifle_M4A4_AFG_olive_AHO_F, JCA_arifle_M4A4_VFG_olive_AHO_F, JCA_arifle_M4A4_GL_olive_AHO_F, JCA_arifle_M4A4_AFG_olive_AHO_snds_F, JCA_arifle_M4A4_VFG_olive_AHO_snds_F, JCA_arifle_M4A4_GL_olive_AHO_snds_F, JCA_arifle_M4A4_AFG_olive_AHO_flashlight_F, JCA_arifle_M4A4_VFG_olive_AHO_flashlight_F, JCA_arifle_M4A4_GL_olive_AHO_flashlight_F, JCA_arifle_M4A4_AFG_olive_AHO_laserModule_F, JCA_arifle_M4A4_VFG_olive_AHO_laserModule_F, JCA_arifle_M4A4_GL_olive_AHO_laserModule_F, JCA_arifle_M4A4_AFG_olive_AHO_DualMount_F, JCA_arifle_M4A4_VFG_olive_AHO_DualMount_F, JCA_arifle_M4A4_GL_olive_AHO_DualMount_F, JCA_arifle_M4A4_AFG_olive_AHO_flashlight_snds_F, JCA_arifle_M4A4_VFG_olive_AHO_flashlight_snds_F, JCA_arifle_M4A4_GL_olive_AHO_flashlight_snds_F, JCA_arifle_M4A4_AFG_olive_AHO_laserModule_snds_F, JCA_arifle_M4A4_VFG_olive_AHO_laserModule_snds_F, JCA_arifle_M4A4_GL_olive_AHO_laserModule_snds_F, JCA_arifle_M4A4_AFG_olive_AHO_DualMount_snds_F, JCA_arifle_M4A4_VFG_olive_AHO_DualMount_snds_F, JCA_arifle_M4A4_GL_olive_AHO_DualMount_snds_F, JCA_arifle_M4A4_AFG_olive_AICO_F, JCA_arifle_M4A4_VFG_olive_AICO_F, JCA_arifle_M4A4_GL_olive_AICO_F, JCA_arifle_M4A4_AFG_olive_AICO_snds_F, JCA_arifle_M4A4_VFG_olive_AICO_snds_F, JCA_arifle_M4A4_GL_olive_AICO_snds_F, JCA_arifle_M4A4_AFG_olive_AICO_flashlight_F, JCA_arifle_M4A4_VFG_olive_AICO_flashlight_F, JCA_arifle_M4A4_GL_olive_AICO_flashlight_F, JCA_arifle_M4A4_AFG_olive_AICO_laserModule_F, JCA_arifle_M4A4_VFG_olive_AICO_laserModule_F, JCA_arifle_M4A4_GL_olive_AICO_laserModule_F, JCA_arifle_M4A4_AFG_olive_AICO_DualMount_F, JCA_arifle_M4A4_VFG_olive_AICO_DualMount_F, JCA_arifle_M4A4_GL_olive_AICO_DualMount_F, JCA_arifle_M4A4_AFG_olive_AICO_flashlight_snds_F, JCA_arifle_M4A4_VFG_olive_AICO_flashlight_snds_F, JCA_arifle_M4A4_GL_olive_AICO_flashlight_snds_F, JCA_arifle_M4A4_AFG_olive_AICO_laserModule_snds_F, JCA_arifle_M4A4_VFG_olive_AICO_laserModule_snds_F, JCA_arifle_M4A4_GL_olive_AICO_laserModule_snds_F, JCA_arifle_M4A4_AFG_olive_AICO_DualMount_snds_F, JCA_arifle_M4A4_VFG_olive_AICO_DualMount_snds_F, JCA_arifle_M4A4_GL_olive_AICO_DualMount_snds_F, JCA_arifle_SR10_black_F, JCA_arifle_SR10_sand_F, JCA_arifle_SR10_olive_F, JCA_arifle_SR10_black_AICO_F, JCA_arifle_SR10_black_AICO_snds_F, JCA_arifle_SR10_black_AICO_flashlight_F, JCA_arifle_SR10_black_AICO_laserModule_F, JCA_arifle_SR10_black_AICO_flashlight_snds_F, JCA_arifle_SR10_black_AICO_laserModule_snds_F, JCA_arifle_SR10_black_MRPS_F, JCA_arifle_SR10_black_MRPS_snds_F, JCA_arifle_SR10_black_MRPS_flashlight_F, JCA_arifle_SR10_black_MRPS_laserModule_F, JCA_arifle_SR10_black_MRPS_flashlight_snds_F, JCA_arifle_SR10_black_MRPS_laserModule_snds_F, JCA_arifle_SR10_sand_AICO_F, JCA_arifle_SR10_sand_AICO_snds_F, JCA_arifle_SR10_sand_AICO_flashlight_F, JCA_arifle_SR10_sand_AICO_laserModule_F, JCA_arifle_SR10_sand_AICO_flashlight_snds_F, JCA_arifle_SR10_sand_AICO_laserModule_snds_F, JCA_arifle_SR10_sand_MRPS_F, JCA_arifle_SR10_sand_MRPS_snds_F, JCA_arifle_SR10_sand_MRPS_flashlight_F, JCA_arifle_SR10_sand_MRPS_laserModule_F, JCA_arifle_SR10_sand_MRPS_flashlight_snds_F, JCA_arifle_SR10_sand_MRPS_laserModule_snds_F, JCA_arifle_SR10_olive_AICO_F, JCA_arifle_SR10_olive_AICO_snds_F, JCA_arifle_SR10_olive_AICO_flashlight_F, JCA_arifle_SR10_olive_AICO_laserModule_F, JCA_arifle_SR10_olive_AICO_flashlight_snds_F, JCA_arifle_SR10_olive_AICO_laserModule_snds_F, JCA_arifle_SR10_olive_MRPS_F, JCA_arifle_SR10_olive_MRPS_snds_F, JCA_arifle_SR10_olive_MRPS_flashlight_F, JCA_arifle_SR10_olive_MRPS_laserModule_F, JCA_arifle_SR10_olive_MRPS_flashlight_snds_F, JCA_arifle_SR10_olive_MRPS_laserModule_snds_F, JCA_arifle_SR25_black_F, JCA_arifle_SR25_sand_F, JCA_arifle_SR25_olive_F, JCA_arifle_SR25_black_ACOG_F, JCA_arifle_SR25_black_ACOG_snds_F, JCA_arifle_SR25_black_ACOG_flashlight_F, JCA_arifle_SR25_black_ACOG_laserModule_F, JCA_arifle_SR25_black_ACOG_flashlight_snds_F, JCA_arifle_SR25_black_ACOG_laserModule_snds_F, JCA_arifle_SR25_black_MRPS_F, JCA_arifle_SR25_black_MRPS_snds_F, JCA_arifle_SR25_black_MRPS_flashlight_F, JCA_arifle_SR25_black_MRPS_laserModule_F, JCA_arifle_SR25_black_MRPS_flashlight_snds_F, JCA_arifle_SR25_black_MRPS_laserModule_snds_F, JCA_arifle_SR25_sand_ACOG_F, JCA_arifle_SR25_sand_ACOG_snds_F, JCA_arifle_SR25_sand_ACOG_flashlight_F, JCA_arifle_SR25_sand_ACOG_laserModule_F, JCA_arifle_SR25_sand_ACOG_flashlight_snds_F, JCA_arifle_SR25_sand_ACOG_laserModule_snds_F, JCA_arifle_SR25_sand_MRPS_F, JCA_arifle_SR25_sand_MRPS_snds_F, JCA_arifle_SR25_sand_MRPS_flashlight_F, JCA_arifle_SR25_sand_MRPS_laserModule_F, JCA_arifle_SR25_sand_MRPS_flashlight_snds_F, JCA_arifle_SR25_sand_MRPS_laserModule_snds_F, JCA_arifle_SR25_olive_ACOG_F, JCA_arifle_SR25_olive_ACOG_snds_F, JCA_arifle_SR25_olive_ACOG_flashlight_F, JCA_arifle_SR25_olive_ACOG_laserModule_F, JCA_arifle_SR25_olive_ACOG_flashlight_snds_F, JCA_arifle_SR25_olive_ACOG_laserModule_snds_F, JCA_arifle_SR25_olive_MRPS_F, JCA_arifle_SR25_olive_MRPS_snds_F, JCA_arifle_SR25_olive_MRPS_flashlight_F, JCA_arifle_SR25_olive_MRPS_laserModule_F, JCA_arifle_SR25_olive_MRPS_flashlight_snds_F, JCA_arifle_SR25_olive_MRPS_laserModule_snds_F"




JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F,



"JCA_arifle_M4A1_base_F",
"JCA_arifle_M4A1_GL_base_F",
"JCA_arifle_M4A1_short_base_F",
"JCA_arifle_M4A4_base_F",
"JCA_arifle_M4A4_GL_base_F",
"JCA_arifle_M4A4_short_base_F",
"JCA_arifle_SR25_base_F",
"JCA_arifle_SR10_base_F",
"JCA_optic_HPPO_base",
"JCA_optic_HPPO_black",
"JCA_optic_HPPO_sand",
"JCA_optic_HPPO_olive",
"JCA_optic_HPPO_RAD_base",
"JCA_optic_HPPO_RAD_black",
"JCA_optic_HPPO_RAD_sand",
"JCA_optic_HPPO_RAD_olive",
"JCA_bipod_AWM_base",
"JCA_bipod_AWM_black",
"JCA_muzzle_snds_tactical_base",
"JCA_muzzle_snds_AWM_tactical_black",
"JCA_muzzle_snds_AWM_tactical_sand",
"JCA_muzzle_snds_AWM_tactical_olive",
"JCA_srifle_AWM_base_F",
"JCA_srifle_AWM_black_F,",



JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F



JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F,



JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F


JCA_srifle_AWM_base_F, JCA_arifle_M4A1_base_F, JCA_arifle_M4A1_GL_base_F, JCA_arifle_M4A1_short_base_F, JCA_arifle_M4A4_base_F, JCA_arifle_M4A4_GL_base_F, JCA_arifle_M4A4_short_base_F, JCA_arifle_SR25_base_F, JCA_arifle_SR10_base_F, JCA_optic_HPPO_base, JCA_optic_HPPO_black, JCA_optic_HPPO_sand, JCA_optic_HPPO_olive, JCA_optic_HPPO_RAD_base, JCA_optic_HPPO_RAD_black, JCA_optic_HPPO_RAD_sand, JCA_optic_HPPO_RAD_olive, JCA_muzzle_snds_tactical_base, JCA_muzzle_snds_AWM_tactical_black, JCA_muzzle_snds_AWM_tactical_sand, JCA_muzzle_snds_AWM_tactical_olive, JCA_bipod_AWM_base, JCA_bipod_AWM_black, JCA_srifle_AWM_black_F


Arifle
"JCA_arifle_M4A1_base_F",
"JCA_arifle_M4A1_GL_base_F",
"JCA_arifle_M4A1_short_base_F",
"JCA_arifle_M4A4_base_F",
"JCA_arifle_M4A4_GL_base_F",
"JCA_arifle_M4A4_short_base_F",
"JCA_arifle_SR25_base_F",
"JCA_arifle_SR10_base_F",
Optic
"JCA_optic_HPPO_base",
"JCA_optic_HPPO_black",
"JCA_optic_HPPO_sand",
"JCA_optic_HPPO_olive",
"JCA_optic_HPPO_RAD_base",
"JCA_optic_HPPO_RAD_black",
"JCA_optic_HPPO_RAD_sand",
"JCA_optic_HPPO_RAD_olive",
Bipod
"JCA_bipod_AWM_base",
"JCA_bipod_AWM_black",
Muzzle
"JCA_muzzle_snds_tactical_base",
"JCA_muzzle_snds_AWM_tactical_black",
"JCA_muzzle_snds_AWM_tactical_sand",
"JCA_muzzle_snds_AWM_tactical_olive",
Srifle
"JCA_srifle_AWM_base_F",
"JCA_srifle_AWM_black_F",



Arifle
"JCA_arifle_M4A1_base_F",
"JCA_arifle_M4A1_GL_base_F",
"JCA_arifle_M4A1_short_base_F",
"JCA_arifle_M4A4_base_F",
"JCA_arifle_M4A4_GL_base_F",
"JCA_arifle_M4A4_short_base_F",
"JCA_arifle_SR25_base_F",
"JCA_arifle_SR10_base_F",
Optic
"JCA_optic_HPPO_base",
"JCA_optic_HPPO_black",
"JCA_optic_HPPO_sand",
"JCA_optic_HPPO_olive",
"JCA_optic_HPPO_RAD_base",
"JCA_optic_HPPO_RAD_black",
"JCA_optic_HPPO_RAD_sand",
"JCA_optic_HPPO_RAD_olive",
Bipod
"JCA_bipod_AWM_base",
"JCA_bipod_AWM_black",
Muzzle
"JCA_muzzle_snds_tactical_base",
"JCA_muzzle_snds_AWM_tactical_black",
"JCA_muzzle_snds_AWM_tactical_sand",
"JCA_muzzle_snds_AWM_tactical_olive",
Srifle
"JCA_srifle_AWM_base_F",
"JCA_srifle_AWM_black_F",
