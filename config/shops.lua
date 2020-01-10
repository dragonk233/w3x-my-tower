shopsAbility = {}

shops = {
    {
        Name = "药商",
        pathTex = "PathTextures\\8x8SimpleSolid.tga",
        abilList = "Aneu,Avul,Apit",
        file = "buildings\\nightelf\\AncientOfLore\\AncientOfLore",
        Art = "ReplaceableTextures\\CommandButtons\\BTNAncientOfLore.blp",
        modelScale = 0.80,
        scale = 2.70,
        HP = 99999,
        sight = 800,
        nsight = 800,
        Sellitems = ""
    },
    {
        Name = "猎人之店",
        pathTex = "PathTextures\\8x8SimpleSolid.tga",
        abilList = "Aneu,Avul,Apit",
        file = "buildings\\nightelf\\HuntersHall\\HuntersHall.mdl",
        Art = "ReplaceableTextures\\CommandButtons\\BTNHuntersHall.blp",
        modelScale = 0.70,
        scale = 4.20,
        HP = 99999,
        sight = 800,
        nsight = 800,
        Sellitems = ""
    },
    {
        Name = "信使之笼",
        pathTex = "PathTextures\\8x8SimpleSolid.tga",
        abilList = "Aneu,Avul,Apit",
        file = "buildings\\human\\GryphonAviary\\GryphonAviary",
        Art = "ReplaceableTextures\\CommandButtons\\BTNGryphonAviary.blp",
        modelScale = 0.80,
        scale = 4.20,
        HP = 99999,
        sight = 800,
        nsight = 800,
        Sellitems = string.implode(",", couriersShopIds)
    }
}
