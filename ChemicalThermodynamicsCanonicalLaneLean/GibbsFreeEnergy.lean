import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure GibbsFreeEnergyPackage where
  system : String
  temperature : Float
  pressure : Float
  deltaG : Float
  spontaneityCondition : Prop

structure GibbsFreeEnergyEvidence (G : GibbsFreeEnergyPackage) where
  spontaneityConditionClosed : G.spontaneityCondition

def GibbsFreeEnergyClosed (G : GibbsFreeEnergyPackage) : Prop :=
  G.spontaneityCondition

theorem gibbs_free_energy_closed_from_evidence (G : GibbsFreeEnergyPackage)
    (Ev : GibbsFreeEnergyEvidence G) : GibbsFreeEnergyClosed G :=
  Ev.spontaneityConditionClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse