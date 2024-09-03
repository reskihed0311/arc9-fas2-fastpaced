local ATT = {}

///////////////////////////////////////      r_fas_dovetail_mountb


ATT = {}

ATT.PrintName = "Dovetail Mount"
ATT.Description = [[Standard rail system that allows attachment of optics designed for AKs.]]
ATT.SortOrder = 0
ATT.MenuCategory = "reshed"
ATT.Free = false

ATT.Category = {"fas_dovetail"}
ATT.Model = "models/accs/mounts/fas_akmount.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.8, 0.43, 1.4)

ATT.Attachments = {
    {
        PrintName = "Optic",
        Pos = Vector(1, 0.9, -2.1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
        Category = {"fas_opticmedium"},
    }
}


ARC9.LoadAttachment(ATT, "r_fas_dovetail_mountb")


///////////////////////////////////////      r_fas_carryhandle_railb


ATT = {}

ATT.PrintName = "Carry Handle Mount"
ATT.Description = [[Mount optics on carry handles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "reshed"
ATT.Free = false

ATT.Category = {"fas_chandle"}
ATT.Model = "models/accs/mounts/fas_chandlemount.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
        Category = {"fas_opticmedium"},
    }
}


ARC9.LoadAttachment(ATT, "r_fas_carryhandle_railb")

