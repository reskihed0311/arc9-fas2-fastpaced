
local ATT = {}


//////////////////////////////////////      rfas_vfg


ATT = {}

ATT.PrintName = "Vertical Foregrip"
ATT.CompactName = "VFG"
ATT.Description = [[Reduces overall recoil.]]


ATT.Model = "models/accs/grips/fas2_vfg.mdl"

ATT.SortOrder = 0
ATT.Category = "fas_grip"
ATT.MenuCategory = "reshed"

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(-16, 1.3, 5)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.RecoilMult = 0.9
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1


ARC9.LoadAttachment(ATT, "rfas_vfg")


//////////////////////////////////////      rfas_mp5griphg


ATT = {}

ATT.PrintName = "MP5 Grip Handguard"
ATT.CompactName = "GRIP"
ATT.Description = [[Reduces overall recoil.]]


ATT.Model = "models/accs/mods/mp5/fas_mp5a5_grip.mdl"


ATT.ActivateElements = {"MP5_HG"}

ATT.SortOrder = 0
ATT.Category = "fas_mp5hg"
ATT.MenuCategory = "reshed"

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(-23.8, -2.9, 4.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.RecoilMult = 0.8
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1


ARC9.LoadAttachment(ATT, "rfas_mp5griphg")

