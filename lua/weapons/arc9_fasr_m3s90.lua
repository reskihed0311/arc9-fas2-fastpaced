AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.NoTPIKVMPos = true

SWEP.Spawnable = true
SWEP.Category = "ARC9 - FA:S Fast Paced"
SWEP.SubCategory = "Shotguns"
SWEP.AdminOnly = false

SWEP.Slot = 3

SWEP.RecoilKick = 0 -- Camera recoil

SWEP.PrintName = "M3 Super 90"


SWEP.Class = "Semi Auto shotgun"


SWEP.Credits = {   -- Number in end of title orders line in list (otherwise they will be in alphabet in menus). "_" will be replaced with space
     Author1 = "reshed",
}


SWEP.Description = [[set this later]]


SWEP.UseHands = true -- Same as weapon_base

SWEP.ViewModel = "models/weapons/shotguns/arc9_fas2_m3s90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"



SWEP.MirrorVMWM = true -- Use this to use the viewmodel as a worldmodel.

SWEP.WorldModelOffset = {
     Pos = Vector(-8,6, -5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(0, 0, 180),
     TPIKPos = Vector(-8,6, -5), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, 0, 180),
     Scale = 1
 }

SWEP.Crosshair = true

SWEP.ViewModelFOVBase = 70-- Set to override viewmodel FOV



SWEP.DamageMax = 13 -- Damage done at point blank range
SWEP.DamageMin = 5 -- Damage done at maximum range
SWEP.ImpactForce = 0 -- Force that bullets apply on hit


SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 1000-- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 1500 -- In Hammer units, how far bullets can travel, period.


SWEP.CurvedDamageScaling = false -- If true, damage will scale in a quadratic curve between RangeMin and RangeMax. If false, damage will scale linearly.


SWEP.Num = 9 -- Number of bullets to shoot


SWEP.Penetration = 0.05 -- Units of wood that can be penetrated by this gun.


SWEP.RicochetAngleMax = 0 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0 -- If the angle is right, what is the chance that a ricochet can occur?
SWEP.RicochetSeeking = false -- Whether ricochet bullets will seek living targets in a cone.


SWEP.DamageType = DMG_BUCKSHOT



SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}


SWEP.NeverPhysBullet = true




-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(0, 255, 4) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 10




-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.



SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.CanFireUnderwater = true -- This weapon can shoot while underwater.



--[[SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.DropMagazineModel = "models/mags/m9k_mag_1911.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_hard2.wav", "physics/metal/weapon_impact_hard1.wav", "physics/metal/weapon_impact_hard3.wav"} -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineSkin = 0 -- Model skin of mag.
SWEP.DropMagazineTime = nil
SWEP.DropMagazineQCA = nil -- QC Attachment drop mag from, would drop from shell port if not defined
SWEP.DropMagazinePos = Vector(-1.5, 1, 0) -- offsets
SWEP.DropMagazineAng = Angle(90, 0, -90 )
SWEP.DropMagazineVelocity = Vector(0, -50, 0) -- Put something here if your anim throws the mag with force

SWEP.BarrelLength = 0 -- Distance for nearwalling

SWEP.DryFireDelay = false -- Set to set time, otherwise uses animation length--]]



-------------------------- FIREMODES

SWEP.RPM = 300



-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}

-------------------------- RECOIL

SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.
-- Should be a number.
SWEP.RecoilPatternDrift = 12 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = nil -- Use to set specific values for predictible recoil. If it runs out, it'll just use Recoil Seed.
-- SWEP.RecoilLookupTable = {
--     15,
--     3,
-- }
SWEP.RecoilLookupTableOverrun = nil -- Repeatedly take values from this table if we run out in the main table

-- General recoil multiplier
SWEP.Recoil = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.3 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0



SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

-------------------------- SPREAD

SWEP.Spread = 0.07

SWEP.UseDispersion = true -- Use this for shotguns - Additional random angle to spread, same for each pellet
SWEP.DispersionSpread = 0.01-- SWEP.Spread will be clump spread, and this will be dispersion of clump


SWEP.SpreadAddMove = 0.03-- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.035 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0.025 -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.03 -- Applied when sighted. Can be negative.




-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways. 

SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0

SWEP.AimDownSightsTime = 0.45 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.40 -- How long it takes to go from sprinting to being able to fire.


SWEP.MagnificationZoomSpeed = 1 -- Multiply how quickly the FOV adjusts itself when entering or exiting the sights, or when toggling from one sight to another.

SWEP.NoSprintWhenLocked = false -- You cannot sprint while reloading with this gun




SWEP.Speed = 0.8

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.7
SWEP.SpeedMultShooting = 0.5


SWEP.CanLean = false




-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 5 -- Not multiplied, but actually just added/subtracted.


SWEP.ShootSound = "m3s90/m3s90_fire1.wav"                            -- Fire

SWEP.ShootSoundSilenced = "m3s90/m3s90_suppressed_fire1.wav"                    -- Fire silenced



SWEP.FiremodeSound = "arc9/firemode.ogg"
SWEP.ToggleAttSound = {
    "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
}

local sightsenter = {"weapon_sightlower.wav", "weapon_sightlower2.wav"}

local sightsexit = {"weapon_sightraise.wav", "weapon_sightraise2.wav"}

SWEP.EnterSightsSound = sightsenter
SWEP.ExitSightsSound = sightsexit




SWEP.BreathInSound = "arc9/breath_inhale.ogg"
SWEP.BreathOutSound = "arc9/breath_exhale.ogg"
SWEP.BreathRunOutSound = "arc9/breath_runout.ogg"

SWEP.TriggerDownSound = "empty_shotguns.wav"
SWEP.TriggerUpSound = ""


-------------------------- EFFECTS

SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = "muzzleflash_M3" -- Used for some muzzle effects.

SWEP.MuzzleEffect = "MuzzleFlash"
SWEP.FastMuzzleEffect = nil

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = "barrel_smoke" -- Particle to spawn after shooting
SWEP.AfterShotParticleDelay = 0.01 -- Delay before spawning the particle



SWEP.ShellEffectCount = 1

SWEP.ShellModel = "models/shells/shell_12gauge.mdl"


SWEP.ShellSmoke = true

SWEP.NoShellEject = true-- Don't eject shell on fire
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable

SWEP.RicochetSounds = ARC9.RicochetSounds

SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellVelocity = nil -- nothing for random, otherwise keep this 0 - 2
SWEP.ShellTime = 0.5 -- Extra time these shells stay on the ground for.


SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.DoFireAnimation = true


SWEP.BobSprintMult = 1 -- if your weapon have fancy sprint animation, layering procedural sprint on top of it may look bad,  so you might need to set this to 0.1
SWEP.BobWalkMult = 1 -- same but for all non sprint actions



-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.26, -5.115, 1.24),
    Ang = Vector (0, 0, 0),
}

SWEP.HasSights = true

-- Alternative "resting" position
SWEP.ActivePos = Vector(-0.9, -2, -0.3)
SWEP.ActiveAng = Angle(0, 0, -5)

-- Position while walking/running (no sprint)
SWEP.MovingPos = nil -- Vector(0, 0, 0)
SWEP.MovingAng = nil -- Angle(0, 0, 0)

-- Position when crouching
SWEP.CrouchPos = Vector(0, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -3)

-- Position when sprinting or safe
SWEP.RestPos = Vector(1, -7, 1)
SWEP.RestAng = Angle(20,-10, -20)






SWEP.VManipOffsetPos = Vector(2, 1, -0.3)
SWEP.VManipOffsetAng = Angle(0, 0, 10)


-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)
SWEP.CustomizeRotateAnchor = Vector(21.5, -4.27, -5.23)
-- To get this value:
-- 1. Line up your iron sights
-- 2. Take the X value of IronSights.Pos and put it in the Y value of anchor like this:
-- IronSights.Pos = Vector(-3.165, -5, 1.15)
-- CustomizeRotateAnchor = Vector(0, -3.165, 0)
-- 3. Set CustomizeRotateAnchor.x to around 15-30
-- 4. Set z to about -3
-- 5. Tweak x and z till it feels rights
-- Much more reliable and easy to do than Darsu difficult method
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = nil


SWEP.CantPeek = nil -- set to true if you dont want peeking on this gnu
SWEP.PeekPos = Vector(-1.5, 3, -4.5)
SWEP.PeekAng = Angle(0, 0.4, -35)
SWEP.NoPeekCrosshair = nil -- Not displays peek crosshair even if its enabled

SWEP.HeightOverBore = 1



-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND









SWEP.Attachments = {


    {
   
        PrintName = "Rail Mount",
        DefaultName = "None",
        Category = {"fas_unirail_optic"},
        Bone = "weapon",
        Pos = Vector(0, -3.4, 4.5),
        Ang = Angle(90, 0, -90),
    },


}



local foley_fast = {"handling/generic_cloth_movement9.wav", "handling/generic_cloth_movement8.wav", "handling/generic_cloth_movement7.wav", "handling/generic_cloth_movement6.wav", "handling/generic_cloth_movement5.wav", "handling/generic_cloth_movement4.wav", "handling/generic_cloth_movement3.wav", "handling/generic_cloth_movement2.wav", "handling/generic_cloth_movement16.wav", "handling/generic_cloth_movement15.wav", "handling/generic_cloth_movement14.wav", "handling/generic_cloth_movement13.wav", "handling/generic_cloth_movement12.wav", "handling/generic_cloth_movement11.wav", "handling/generic_cloth_movement10.wav", "handling/generic_cloth_movement1.wav"}

local grip = {"handling/generic_grip_medium1.wav", "handling/generic_grip_light2.wav", "handling/generic_grip_light1.wav", "handling/generic_grip_heavy2.wav", "handling/generic_grip_heavy1.wav"}

local deploy = {"weapon_deploy1.wav", "weapon_deploy2.wav", "weapon_deploy3.wav"}

local holster = {"weapon_holster1.wav", "weapon_holster2.wav", "weapon_holster3.wav"}

local shellin = {"m3s90/m3s90_load1.wav", "m3s90/m3s90_load2.wav", "m3s90/m3s90_load3.wav", "m3s90/m3s90_load4.wav", "m3s90/m3s90_load5.wav", "m3s90/m3s90_load6.wav", "m3s90/m3s90_load7.wav", "m3s90/m3s90_load8.wav"}

SWEP.ShotgunReload = true -- Weapon reloads like shotgun. Uses insert_1, insert_2, etc animations instead.
SWEP.ShotgunReloadIncludesChamber = true -- Shotguns reload to full capacity, assuming that the chamber is loaded as part of the animation.
SWEP.ShotgunReloadNoChamber = true -- No chambering at all on shotgun reloading

SWEP.Animations = {
     ["idle"] = {
         Source = "idle",
     },
    ["fire"] = {
        Source = "fire",
		EjectAt = 0,
       EventTable = {
        }

    },
	    ["fire_empty"] = {
        Source = "fire_empty",
		EjectAt = 0,
       EventTable = {
        }

    },
    ["fire_iron"] = {
        Source = "fire_iron",
		EjectAt = 0,
       EventTable = {
        }


    },
	    ["fire_iron_empty"] = {
        Source = "fire_empty",
		EjectAt = 0,
       EventTable = {
        }


    },
    ["reload_start"] = {
        Source = "reload_start",
         EventTable = {
		 {s = foley_fast , t = 0},
        }
    },
	    ["reload_start_empty"] = {
        Source = "reload_start_empty",
		RestoreAmmo = 1, -- Restores ammunition to clip
         EventTable = {
		 {s = foley_fast , t = 0},
		 {s = "m3s90/m3s90_load_ejectorport.wav", t = 0.6},
		 {s = "m3s90/m3s90_boltcatch.wav", t = 1},
        }
    },
	    ["reload_insert"] = {
        Source = "reload_loop",
         EventTable = {
		 {s = foley_fast , t = 0},
		 {s = shellin , t = 0.3},
        }
    },
    ["reload_finish"] = {
        Source = "reload_end",
           EventTable = {
		 {s = foley_fast , t = 0},
        }
    },
    ["draw"] = {
        Source = "draw",
         EventTable = {
		 {s = deploy , t = 0},
        }
    },
	    ["draw_empty"] = {
        Source = "draw_empty",
         EventTable = {
		 {s = deploy , t = 0},
        }
    },
    ["holster"] = {
        Source = "holster",
		  EventTable = {
		  {s = holster , t = 0},
        }
    },
	    ["holster_empty"] = {
        Source = "holster_empty",
		  EventTable = {
		  {s = holster , t = 0},
        }
    },
}