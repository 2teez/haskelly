-- file: Geometry.hs
module Geometry
  ( sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidVolume,
    cuboidArea,
  )
where

sphereVolume :: Float -> Float
sphereVolume radius = 4 / 3 * pi * radius ^ 3

sphereArea :: Float -> Float
sphereArea radius = 4 * pi * radius ^ 2

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume length width height = rectArea length width * height

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea length width height = rectArea length width * 2 + rectArea width height * 2 + rectArea height length * 2

rectArea :: Float -> Float -> Float
rectArea length width = length * width
