local sphere = workspace.Different_Balls.firstSphere

sphere:ApplyImpulse(Vector3.new(-5000, 0, 0)) -- impulse to move the sphere on its own, away from the centre of mass. format is (x, y, z)
-- sphere:ApplyAngularImpulse(Vector3.new(1000, 0, 1000)) -- spins the ball or smth
