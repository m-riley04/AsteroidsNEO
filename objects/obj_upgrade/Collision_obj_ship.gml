switch (upgrade)
{
	case (UPGRADE.MULTISHOT):
		multishot()
		break;
	case (UPGRADE.SHIELD):
		shield()
		break;
	case (UPGRADE.LASER):
		laser()
		break;
	case (UPGRADE.BOMB):
		bomb()
		break;
	case (UPGRADE.FREEZE):
		freeze()
		break;
	case (UPGRADE.DRONE):
		drone()
		break;
	case (UPGRADE.HEATSEEK):
		heatseek()
		break;
	case (UPGRADE.MULTIPLIER):
		multiplier()
		break;
	case (UPGRADE.EXTRALIFE):
		extraLife()
		break;
	case (UPGRADE.SHOCKWAVE):
		shockwave()
		break;
	case (UPGRADE.NONE):
		break;
}

instance_destroy()