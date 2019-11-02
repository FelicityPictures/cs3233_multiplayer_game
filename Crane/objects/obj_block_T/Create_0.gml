static = false

// ADDITIONAL HITBOX/FIXTURE

var fixture = physics_fixture_create()
physics_fixture_set_polygon_shape(fixture)

physics_fixture_add_point(fixture, 32, 0)
physics_fixture_add_point(fixture, 64, 0)
physics_fixture_add_point(fixture, 64, 32)
physics_fixture_add_point(fixture, 32, 32)

physics_fixture_set_friction(fixture, 1.5)
physics_fixture_set_linear_damping(fixture, 0.4)
physics_fixture_set_angular_damping(fixture, 0.4)

physics_fixture_bind(fixture, id)
physics_fixture_delete(fixture)