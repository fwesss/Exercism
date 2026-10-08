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
ageOn Mercury seconds = earthYears seconds / 0.2408467
ageOn Venus seconds = earthYears seconds / 0.61519726
ageOn Earth seconds = earthYears seconds
ageOn Mars seconds = earthYears seconds / 1.8808158
ageOn Jupiter seconds = earthYears seconds / 11.862615
ageOn Saturn seconds = earthYears seconds / 29.447498
ageOn Uranus seconds = earthYears seconds / 84.016846
ageOn Neptune seconds = earthYears seconds / 164.79132
