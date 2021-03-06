using LiquidsStructure
using Test


const AHS = AttractiveHardSpheres
const k∞ = inv(eps()) # large wavevector


@testset "Hard disks, Rosenfeld FMT" begin
    η = 0.1
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.6604201250395436
    @test f(π/2) ≈ 0.7269796280941714
    @test f(1π ) ≈ 0.9054985794257596
    @test f(2π ) ≈ 1.0331423908135913
    @test f(k∞ ) ≈ 1.0

    η = 0.2
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.42121335772860696
    @test f(π/2) ≈ 0.4957408483427397
    @test f(1π ) ≈ 0.7616284799236219
    @test f(2π ) ≈ 1.0838625683290253
    @test f(k∞ ) ≈ 1.0

    η = 0.3
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.256818185902224
    @test f(π/2) ≈ 0.3150257470860998
    @test f(1π ) ≈ 0.5746880320600511
    @test f(2π ) ≈ 1.1663158306646833
    @test f(k∞ ) ≈ 1.0

    η = 0.4
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.14747909074224583
    @test f(π/2) ≈ 0.18467032538432618
    @test f(1π ) ≈ 0.37610672082612917
    @test f(2π ) ≈ 1.312642950246751
    @test f(k∞ ) ≈ 1.0

    η = 0.5
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.0779666302822392
    @test f(π/2) ≈ 0.09810277945694483
    @test f(1π ) ≈ 0.2083203632199568
    @test f(2π ) ≈ 1.608912503571731
    @test f(k∞ ) ≈ 1.0

    η = 0.6
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.036533750792325716
    @test f(π/2) ≈ 0.04568348215003821
    @test f(1π ) ≈ 0.09561925118936167
    @test f(2π ) ≈ 2.325299703948229
    @test f(k∞ ) ≈ 1.0

    η = 0.7
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.01413529677840881
    @test f(π/2) ≈ 0.01744107861016397
    @test f(1π ) ≈ 0.03474517028685856
    @test f(2π ) ≈ 3.298291540535111
    @test f(k∞ ) ≈ 1.0

    η = 0.8
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.003851154422049552
    @test f(π/2) ≈ 0.004670418158317173
    @test f(1π ) ≈ 0.008718525753638387
    @test f(2π ) ≈ 0.572989315611843
    @test f(k∞ ) ≈ 1.0

    η = 0.9
    f = StructureFactor(HardDisks(η), RosenfeldFMT)
    @test f(0.0) ≈ 0.0004441340638213542
    @test f(π/2) ≈ 0.0005286284359062185
    @test f(1π ) ≈ 0.0009226519112744395
    @test f(2π ) ≈ 0.025405875690152686
    @test f(k∞ ) ≈ 1.0
end

@testset "Hard spheres, Percus–Yevick" begin
    η = 0.1
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.455625
    @test f(π/2) ≈ 0.5162698774690883
    @test f(1π ) ≈ 0.7166968096587476
    @test f(2π ) ≈ 1.0831625291823719
    @test f(k∞ ) ≈ 1.0

    η = 0.2
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.20897959183673484
    @test f(π/2) ≈ 0.2492889697353935
    @test f(1π ) ≈ 0.42259178223764265
    @test f(2π ) ≈ 1.2365374806798426
    @test f(k∞ ) ≈ 1.0

    η = 0.3
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.0937890624999999
    @test f(π/2) ≈ 0.113580452287522
    @test f(1π ) ≈ 0.2083407060258776
    @test f(2π ) ≈ 1.513704692974072
    @test f(k∞ ) ≈ 1.0

    η = 0.4
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.04
    @test f(π/2) ≈ 0.04834624242434464
    @test f(1π ) ≈ 0.0889840427994623
    @test f(2π ) ≈ 1.7888899102094844
    @test f(k∞ ) ≈ 1.0

    η = 0.5
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.015625000000000007
    @test f(π/2) ≈ 0.01870914640113364
    @test f(1π ) ≈ 0.0333665751636566
    @test f(2π ) ≈ 1.0433145711209884
    @test f(k∞ ) ≈ 1.0

    η = 0.6
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.005289256198347106
    @test f(π/2) ≈ 0.006257471729168288
    @test f(1π ) ≈ 0.010689789920403656
    @test f(2π ) ≈ 0.23121862372838764
    @test f(k∞ ) ≈ 1.0

    η = 0.7
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.0014062500000000021
    @test f(π/2) ≈ 0.00164315820030793
    @test f(1π ) ≈ 0.002687286985730639
    @test f(2π ) ≈ 0.03729828280050181
    @test f(k∞ ) ≈ 1.0

    η = 0.8
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 0.00023668639053254386
    @test f(π/2) ≈ 0.0002733505741836147
    @test f(1π ) ≈ 0.00042959576011198774
    @test f(2π ) ≈ 0.004276959009112015
    @test f(k∞ ) ≈ 1.0

    η = 0.9
    f = StructureFactor(HardSpheres(η), PercusYevick)
    @test f(0.0) ≈ 1.2755102040816327e-5
    @test f(π/2) ≈ 1.4577626809289744e-5
    @test f(1π ) ≈ 2.2128300716842136e-5
    @test f(2π ) ≈ 0.0001727400947607701
    @test f(k∞ ) ≈ 1.0
end

@testset "Hard spheres, Verlet–Weis" begin
    η = 0.1
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.4578452915332574
    @test f(π/2) ≈ 0.5182637197480197
    @test f(1π ) ≈ 0.7174855200551944
    @test f(2π ) ≈ 1.0829101226236082
    @test f(k∞ ) ≈ 1.0

    η = 0.2
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.2131237008975026
    @test f(π/2) ≈ 0.25367291404685227
    @test f(1π ) ≈ 0.4267618525871056
    @test f(2π ) ≈ 1.233011655529535
    @test f(k∞ ) ≈ 1.0

    η = 0.3
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.09821655794190104
    @test f(π/2) ≈ 0.11862134915114293
    @test f(1π ) ≈ 0.21541648542267264
    @test f(2π ) ≈ 1.4916754221537918
    @test f(k∞ ) ≈ 1.0

    η = 0.4
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.04369978853680091
    @test f(π/2) ≈ 0.05268107258287156
    @test f(1π ) ≈ 0.09605449462293068
    @test f(2π ) ≈ 1.7231617060108197
    @test f(k∞ ) ≈ 1.0

    η = 0.5
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.018237055564413282
    @test f(π/2) ≈ 0.021789977028257794
    @test f(1π ) ≈ 0.03857987865992043
    @test f(2π ) ≈ 1.0818137287598686
    @test f(k∞ ) ≈ 1.0

    η = 0.6
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.006861393142599895
    @test f(π/2) ≈ 0.008104719915885968
    @test f(1π ) ≈ 0.01377843599859209
    @test f(2π ) ≈ 0.2882778877829879
    @test f(k∞ ) ≈ 1.0

    η = 0.7
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.0021846162335262737
    @test f(π/2) ≈ 0.0025501353769391737
    @test f(1π ) ≈ 0.004158905666715577
    @test f(2π ) ≈ 0.05749168504321367
    @test f(k∞ ) ≈ 1.0

    η = 0.8
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 0.0005224489795918363
    @test f(π/2) ≈ 0.0006030737594212403
    @test f(1π ) ≈ 0.0009465346587026628
    @test f(2π ) ≈ 0.00944076344580056
    @test f(k∞ ) ≈ 1.0

    η = 0.9
    f = StructureFactor(HardSpheres(η), VerletWeis)
    @test f(0.0) ≈ 7.067452999457804e-5
    @test f(π/2) ≈ 8.075895958572265e-5
    @test f(1π ) ≈ 0.00012253818964376312
    @test f(2π ) ≈ 0.0009578116657578688
    @test f(k∞ ) ≈ 1.0
end

@testset "Yukawa Attractive hard spheres, Sharma–Sharma" begin
    Z  = 2.0
    λ  = 1.5
    U  = Yukawa{3}(Z)

    η  = 0.1
    T′ = 1.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 2.603191157463335
    @test f(π/2) ≈ 0.6863273179451208
    @test f(1π ) ≈ 0.6382449330348262
    @test f(2π ) ≈ 1.1517581024741745

    η  = 0.2
    T′ = 1.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.9156580819599524
    @test f(π/2) ≈ 0.33365513773093114
    @test f(1π ) ≈ 0.37184289969239975
    @test f(2π ) ≈ 1.4273016612357994
    @test f(k∞ ) ≈ 1.0

    η  = 0.3
    T′ = 0.75
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.3353923486908502
    @test f(π/2) ≈ 0.15289981479991796
    @test f(1π ) ≈ 0.1874649216578271
    @test f(2π ) ≈ 2.2242590379730283
    @test f(k∞ ) ≈ 1.0

    η  = 0.4
    T′ = 0.75
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.07528189724199456
    @test f(π/2) ≈ 0.06074518898941603
    @test f(1π ) ≈ 0.08823291923872414
    @test f(2π ) ≈ 3.497363781631624
    @test f(k∞ ) ≈ 1.0

    η  = 0.5
    T′ = 1.5
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.0204777822845714
    @test f(π/2) ≈ 0.022564349488829176
    @test f(1π ) ≈ 0.037740052742288845
    @test f(2π ) ≈ 1.3506683217180429
    @test f(k∞ ) ≈ 1.0

    η  = 0.6
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.007125400066847413
    @test f(π/2) ≈ 0.008198910387096473
    @test f(1π ) ≈ 0.013680583265695689
    @test f(2π ) ≈ 0.3027297985049469
    @test f(k∞ ) ≈ 1.0

    η  = 0.7
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.002215102876656909
    @test f(π/2) ≈ 0.002560935319716773
    @test f(1π ) ≈ 0.004148456520065383
    @test f(2π ) ≈ 0.05813743812055229
    @test f(k∞ ) ≈ 1.0

    η  = 0.8
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.0005244216612367169
    @test f(π/2) ≈ 0.0006037619166927905
    @test f(1π ) ≈ 0.0009459149383432805
    @test f(2π ) ≈ 0.009460483948091025
    @test f(k∞ ) ≈ 1.0

    η  = 0.9
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 7.071501177136412e-5
    @test f(π/2) ≈ 8.077282906281272e-5
    @test f(1π ) ≈ 0.0001225264983879417
    @test f(2π ) ≈ 0.0009580396021185613
    @test f(k∞ ) ≈ 1.0

end

@testset "Square Well Attractive hard spheres, Sharma–Sharma" begin
    λ  = 1.5
    U  = SquareWell{3}(λ)

    η  = 0.1
    T′ = 1.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 3.5193435613655701
    @test f(π/2) ≈ 0.92661127755109707
    @test f(1π ) ≈ 0.58331796691647120
    @test f(2π ) ≈ 1.2962503853125780

    η  = 0.2
    T′ = 1.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 1.1209371060679321
    @test f(π/2) ≈ 0.44614027958622848
    @test f(1π ) ≈ 0.33507838902406228
    @test f(2π ) ≈ 1.9721579006903056
    @test f(k∞ ) ≈ 1.0

    η  = 0.3
    T′ = 0.75
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 0.38735928482005272
    @test f(π/2) ≈ 0.19885016413408196
    @test f(1π ) ≈ 0.16879151714668816
    @test f(2π ) ≈ 16.010240228035098
    @test f(k∞ ) ≈ 1.0

    η  = 0.4
    T′ = 0.75
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 7.8430925994702708e-2
    @test f(π/2) ≈ 6.9217956774394074e-2
    @test f(1π ) ≈ 8.2504930426001266e-2
    @test f(2π ) ≈ -4.3432773350119831
    @test f(k∞ ) ≈ 1.0

    η  = 0.5
    T′ = 1.5
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 2.0618522825051694e-2
    @test f(π/2) ≈ 2.3224344950697608e-2
    @test f(1π ) ≈ 3.7052366895499976e-2
    @test f(2π ) ≈ 2.3936751366867295
    @test f(k∞ ) ≈ 1.0

    η  = 0.6
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 7.1406640933698879e-3
    @test f(π/2) ≈ 8.2758206645957878e-3
    @test f(1π ) ≈ 1.3598245019352462e-2
    @test f(2π ) ≈ 0.33190285202602476
    @test f(k∞ ) ≈ 1.0

    η  = 0.7
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 2.2168215473822354e-3
    @test f(π/2) ≈ 2.5696376277179267e-3
    @test f(1π ) ≈ 4.1395889487837005e-3
    @test f(2π ) ≈ 5.9305356062453886e-2
    @test f(k∞ ) ≈ 1.0

    η  = 0.8
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 5.2453169154913833e-4
    @test f(π/2) ≈ 6.0431333832571899e-4
    @test f(1π ) ≈ 9.4538720482588478e-4
    @test f(2π ) ≈ 9.4952595505868632e-3
    @test f(k∞ ) ≈ 1.0

    η  = 0.9
    T′ = 2.0
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ 7.0717262118774555e-5
    @test f(π/2) ≈ 8.0783923331053070e-5
    @test f(1π ) ≈ 1.2251653217610584e-4
    @test f(2π ) ≈ 9.5843950557686168e-4
    @test f(k∞ ) ≈ 1.0

end

@testset "SharmaSharma{VerletWeis} with no attraction versus VerletWeis" begin
    η = 0.1

    f₀ = StructureFactor(HardSpheres(η), VerletWeis)

    T′ = 1.0
    Z  = 2.0
    U  = Yukawa{3}(Z, ϵ = 0.0)
    f  = StructureFactor(AHS(η, T′, U), SharmaSharma{VerletWeis})
    @test f(0.0) ≈ f₀(0.0)
    @test f(π/2) ≈ f₀(π/2)
    @test f(1π ) ≈ f₀(1π )
    @test f(2π ) ≈ f₀(2π )
    @test f(k∞ ) ≈ f₀(k∞ )
end

@testset "Dipolar hard spheres, MSA" begin
    η = 0.1
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.455625, 0.6291407983765894, 1.2666736611367042) )
    @test all( f(π/2) .≈ (0.5162698774690883, 0.6850767960631556, 1.1938720996192682) )
    @test all( f(1π ) .≈ (0.7166968096587476, 0.8416086006775434, 1.0666596582612127) )
    @test all( f(2π ) .≈ (1.0831625291823719, 1.0426349627796052, 0.9836365170156721) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.2
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.20897959183673484, 0.4431390440180322, 1.5229321819837567) )
    @test all( f(π/2) .≈ (0.2492889697353935, 0.5035359373018747, 1.3590195670624214) )
    @test all( f(1π ) .≈ (0.42259178223764265, 0.7056963342919332, 1.1112828002460329) )
    @test all( f(2π ) .≈ (1.2365374806798426, 1.0871649764504834, 0.9728720629632218) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.3
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.0937890624999999, 0.33702806816959363, 1.7633203545450626) )
    @test all( f(π/2) .≈ (0.113580452287522, 0.391990692356982, 1.4979049530982467) )
    @test all( f(1π ) .≈ (0.2083407060258776, 0.5976735425934862, 1.142269051998251) )
    @test all( f(2π ) .≈ (1.513704692974072, 1.1316981741146153, 0.9653800070336875) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.4
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.04, 0.2700545515466438, 1.9882472781755554) )
    @test all( f(π/2) .≈ (0.04834624242434464, 0.3184635771562895, 1.6157348484418494) )
    @test all( f(1π ) .≈ (0.0889840427994623, 0.5132862854019397, 1.164806497625769) )
    @test all( f(2π ) .≈ (1.7888899102094844, 1.1754992038280996, 0.959870575710502) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.5
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.015625000000000007, 0.2244848150807989, 2.19952173374085) )
    @test all( f(π/2) .≈ (0.01870914640113364, 0.26704088038841756, 1.717078039617591) )
    @test all( f(1π ) .≈ (0.0333665751636566, 0.44699097699243284, 1.1818864428745708) )
    @test all( f(2π ) .≈ (1.0433145711209884, 1.218279674681617, 0.9556335505378297) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.6
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.005289256198347106, 0.19168706560349014, 2.399024573085883) )
    @test all( f(π/2) .≈ (0.006257471729168288, 0.22934004449014636, 1.805425696890689) )
    @test all( f(1π ) .≈ (0.010689789920403656, 0.3942033193842698, 1.1952745418340207) )
    @test all( f(2π ) .≈ (0.23121862372838764, 1.259913401542428, 0.9522584797097164) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.7
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.0014062500000000021, 0.1670469612108733, 2.5883898638161775) )
    @test all( f(π/2) .≈ (0.00164315820030793, 0.20064493447924217, 1.8833761824596493) )
    @test all( f(1π ) .≈ (0.002687286985730639, 0.35151915456843674, 1.2060595083159515) )
    @test all( f(2π ) .≈ (0.03729828280050181, 1.3003308303131165, 0.9494945625210339) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.8
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (0.00023668639053254386, 0.14790394033902815, 2.7689702226837616) )
    @test all( f(π/2) .≈ (0.0002733505741836147, 0.17813835606095949, 1.952872588160253) )
    @test all( f(1π ) .≈ (0.00042959576011198774, 0.31648036971131643, 1.2149430519305693) )
    @test all( f(2π ) .≈ (0.004276959009112015, 1.3394797925053805, 0.9471805606574033) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )

    η = 0.9
    f = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    @test all( f(0.0) .≈ (1.2755102040816327e-5, 0.13262741072118495, 2.9418730238949813) )
    @test all( f(π/2) .≈ (1.4577626809289744e-5, 0.1600487295395634, 2.015388817420257) )
    @test all( f(1π ) .≈ (2.2128300716842136e-5, 0.28731317162020314, 1.2223958555431893) )
    @test all( f(2π ) .≈ (0.0001727400947607701, 1.3773111025661495, 0.9452081841208045) )
    @test all( f(k∞ ) .≈ (1.0, 1.0, 1.0) )
end

@testset "DipolarHardSpheres, MSA–PercusYevick–VerletWeis" begin
    η = 0.1
    f₁ = StructureFactor(HardSpheres(η), PercusYevick)
    g₁ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    f₂ = StructureFactor(HardSpheres(η), VerletWeis)
    g₂ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{VerletWeis})
    k = 0.0
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = π / 2
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 1π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 2π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]

    η = 0.45
    f₁ = StructureFactor(HardSpheres(η), PercusYevick)
    g₁ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    f₂ = StructureFactor(HardSpheres(η), VerletWeis)
    g₂ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{VerletWeis})
    k = 0.0
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = π / 2
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 1π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 2π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]

    η = 0.9
    f₁ = StructureFactor(HardSpheres(η), PercusYevick)
    g₁ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{PercusYevick})
    f₂ = StructureFactor(HardSpheres(η), VerletWeis)
    g₂ = StructureFactor(DipolarHardSpheres(η, 1.0), MSA{VerletWeis})
    k = 0.0
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = π / 2
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 1π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
    k = 2π
    v₁, v₂ = g₁(k), g₂(k)
    @test v₁[1] == f₁(k)
    @test v₂[1] == f₂(k)
    @test v₁[2] == v₂[2]
    @test v₁[3] == v₂[3]
end

@testset "Utils" begin
    S = StructureFactor(HardDisks(0.1), RosenfeldFMT)
    @test dimensionality(S) == dimensionality(S.liquid) == 2
    @test repr(S.liquid) == "HardDisks(0.1, 1.0, HardCore{2}(1))"
    @test repr(S.scheme) == "RosenfeldFMT"
    @test repr(S) == "StructureFactor(HardDisks(0.1, 1.0, HardCore{2}(1)), RosenfeldFMT)"

    S = StructureFactor(HardSpheres(0.2), PercusYevick)
    @test dimensionality(S) == dimensionality(S.liquid) == 3
    @test repr(S.liquid) == "HardSpheres(0.2, 1.0, HardCore{3}(1))"
    @test repr(S.scheme) == "PercusYevick"
    @test repr(S) == "StructureFactor(HardSpheres(0.2, 1.0, HardCore{3}(1)), PercusYevick)"

    S = StructureFactor(HardSpheres(0.3), VerletWeis)
    @test repr(S.liquid) == "HardSpheres(0.3, 1.0, HardCore{3}(1))"
    @test repr(S.scheme) == "VerletWeis"
    @test repr(S) == "StructureFactor(HardSpheres(0.3, 1.0, HardCore{3}(1)), VerletWeis)"

    S = StructureFactor(DipolarHardSpheres(0.4, 1.0), MSA{PercusYevick})
    @test dimensionality(S) == dimensionality(S.liquid) == 3
    potential = "CompositePotential(HardCore{3}(1), DipoleDipole(1))"
    @test repr(S.liquid) == "DipolarHardSpheres(0.4, 1.0, $potential)"
    @test repr(S.scheme) == "MSA{PercusYevick}"
    @test repr(S) == "StructureFactor(DipolarHardSpheres(0.4, 1.0, $potential), MSA{PercusYevick})"
end
