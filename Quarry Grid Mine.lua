local args = { ... }
if #args ~= 3 then
  print( "Usage: program <param1>" )
  error()
end

local xDist,yDist,zDist = args[1],args[2],args[3]

function fuelTurtle()
  if turtle.getFuelLevel() ~= "unlimited" and turtle.getFuelLevel() < 1 then
    turtle.refuel()
  end
end

for y=0,yDist,1 do
  for x=0,xDist,1 do
    for z=0,zDist,1 do
      fuelTurtle()
      turtle.forward()
    end
    if x%2 == 0 then
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
    else
      turtle.turnLeft()
      turtle.forward()
      turtle.turnLeft()
    end
  end
end
