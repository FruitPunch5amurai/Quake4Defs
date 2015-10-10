effect effects/vehicles/walker/machinegun/impact_glass
{
	size	136

	sound "sound"
	{
		soundShader	"bullet_impact_glass"
	}
	decal "mark"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/bulletglass"

			start
			{
				size { box 6,6,10,10 }
				rotate { box 0,1 }
			}
		}
	}
	spawner "smoke"
	{
		count		2,2

		sprite
		{
			duration	0.5,0.75
			material	"gfx/effects/smoke/steam_alpha"
			gravity		0.02,0.02

			start
			{
				velocity { box 0,-5,-5,40,5,5 }
				acceleration { point -40,0,0 }
				size { line 5,5,10,10 }
				tint { line 0.717647,0.792157,0.815686,0.713726,0.819608,0.760784 }
				fade { point 0.6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { line 15,15,25,25 }
			}
		}
	}
	spawner "chunks"
	{
		start		0.1,0.1
		count		3,6

		sprite
		{
			duration	1,2
			material	"gfx/effects/particles_shapes/glass_chunks"
			gravity		0.2,0.2

			start
			{
				position { point 1,0,0 }
				velocity { box 60,-40,-40,140,40,40 }
				size { line 1,1,2,2 }
				tint { line 0.556863,0.866667,0.85098,1,1,1 }
				fade { point 0.5 }
				rotate { box 0,0.333333 }
			}

			motion
			{
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				rotate { box 0.333333,0.666667 relative }
			}
		}
	}
}




