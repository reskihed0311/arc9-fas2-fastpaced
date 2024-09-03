local ATT = {}




//////////////////////////////////////     r_fas_cmore

ATT = {}

ATT.PrintName = "CMORE"
ATT.Description = [[Small precision sight picture , made by the Russian Federation..]]
ATT.Pros = {
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.MenuCategory = "reshed"
ATT.Free = false
ATT.Folder = "Reflex Sights"

ATT.Category = {"fas_opticmedium"}


ATT.Model = "models/accs/optics/fas_cmore.mdl"
ATT.Scale = 1.2
ATT.ModelOffset = Vector(0, 0, 0.)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 56,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/hud/rets/reflex/cmore", "mips")
ATT.HoloSightSize =300
ATT.HoloSightColorable = false

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05


ARC9.LoadAttachment(ATT, "r_fas_cmore")



///////////////////////////////////////      r_fas_acog


ATT = {}

ATT.PrintName = "ACOG"
ATT.Description = [[The classic magnifier!]]
ATT.SortOrder = 0

ATT.Model = "models/accs/optics/fas_acog.mdl"

ATT.MenuCategory = "reshed"
ATT.Category = {"fas_opticmedium"}
ATT.Folder = "Medium Range Optics"
ATT.Scale = 1.5

ATT.ModelOffset = Vector(-0.25, 0, 0.01)

ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.61),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        RTScopeFOV = 36/4,
    
    },
}




ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 12
ATT.RTScopeReticle = Material("models/hud/rets/magnified/acog", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeBlackBox = true 
ATT.RTScopeBlackBoxShadow = true 

ATT.ScopeScreenRatio = 0.66

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.10


ARC9.LoadAttachment(ATT, "r_fas_acog")




