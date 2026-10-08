module SpaceAge (Planet (..), ageOn) where

data Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

type Seconds = Float

minutes :: Seconds -> Float
minutes seconds = seconds / 60

hours :: Seconds -> Float
hours seconds = minutes seconds / 60

days :: Seconds -> Float
days seconds = hours seconds / 24

earthYears :: Seconds -> Float
earthYears seconds = days seconds / 365.25

ageOn :: Planet -> Seconds -> Float
ageOn planet seconds = earthYears seconds / factor
 where
  factor = case planet of
    Mercury -> 0.2408467
    Venus -> 0.61519726
    Earth -> 1
    Mars -> 1.8808158
    Jupiter -> 11.862615
    Saturn -> 29.447498
    Uranus -> 84.016846
    Neptune -> 164.79132
