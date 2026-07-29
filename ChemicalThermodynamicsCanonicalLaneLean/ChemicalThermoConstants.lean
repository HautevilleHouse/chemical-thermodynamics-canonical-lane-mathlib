import ChemicalThermodynamicsCanonicalLaneLean.ChemicalEquilibriumThermodynamics

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ThermoConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String

def thermoConstantSpecs : List ThermoConstantSpec :=
  [{ group := "gas_constant", key := "R", status := "fundamental", formula := "8.314462618", sourceSection := "CODATA 2018", validation := "required_positive", componentKeys := [] },
   { group := "standard_pressure", key := "P0", status := "defined", formula := "1e5", sourceSection := "IUPAC", validation := "required_positive", componentKeys := [] },
   { group := "standard_temperature", key := "T0", status := "defined", formula := "298.15", sourceSection := "IUPAC", validation := "required_positive", componentKeys := [] }]

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse