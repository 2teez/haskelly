-- file: Cuboid.hs
module Geometry.Cuboid (volume, area) where

volume :: Float -> Float -> Float -> Float
volume length width height = rectArea length width * height

area :: Float -> Float -> Float -> Float
area length width height = rectArea length width * 2 + rectArea width height * 2 + rectArea height length * 2

rectArea :: Float -> Float -> Float
rectArea length width = length * width
