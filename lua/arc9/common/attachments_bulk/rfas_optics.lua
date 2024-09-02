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
ATT.HoloSightColorable = true

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05


ARC9.LoadAttachment(ATT, "r_fas_cmore")




