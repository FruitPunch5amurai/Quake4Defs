effect effects/monsters/harvester/blaster_burst
{
	size	71

	sound "sound2"
	{
		soundShader	"effects_blaster_hit_big"
	}
	decal "wall_mark2"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/blaster_wall_mark3"

			start
			{
				size { point 12,12 }
				rotate { box 0,1 }
			}
		}
	}
	spawner "impact_flash2"
	{
		count		1,1

		sprite
		{
			duration	0.14,0.14
			blend	add
			material	"gfx/effects/weapons/flash_green"
			generatedNormal

			start
			{
				position { point 2,0,0 }
				size { point 10,10 }
				tint { point 1,0.501961,0 }
			}

			motion
			{
				fade { envelope exp_x2 }
			}
		}
	}
	spawner "side_impact_streaks2"
	{
		count		7,9
		locked

		line
		{
			duration	0.1,0.1
			blend	add
			material	"gfx/effects/weapons/blaster_fly_redflipped"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,-0.2,0.3,0.3 surface }
				size { point 3 }
				length { box 12,0,0,15,0,0 }
			}

			motion
			{
				fade { envelope linear }
			}
		}
	}
	emitter "smoke2"
	{
		duration	0.2,0.2
		count		20,20

		sprite
		{
			duration	0.8,1
			blend	add
			material	"gfx/effects/weapons/plasma2"
			gravity		-0.02,-0.02

			start
			{
				position { line 0,0,0,10,0,0 }
				velocity { box 0,-8,-8,20,8,8 }
				size { line 6,6,8,8 }
				tint { line 1,1,1,0.984314,0.435294,0.435294 }
				fade { point 0.35 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 18,18,24,24 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "single_line"
	{
		count		1,1

		line
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/blaster_fly_redflipped"

			start
			{
				size { box 4,7 }
				length { box 20,0,0,30,0,0 }
			}

			motion
			{
				length { envelope linear }
			}
		}
	}
	spawner "heat_mark"
	{
		count		2,2

		oriented
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/weapons/g_rail_flash"

			start
			{
				position { point 0.1,0,0 }
				rotate { box 0,0,0,0,0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 50,50 }
				rotate { box 0,0,-0.111111,0,0,0.111111 relative }
			}
		}
	}
}
