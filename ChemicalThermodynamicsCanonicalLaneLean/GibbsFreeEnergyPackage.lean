import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure GibbsFreeEnergyPackage where
  enthalpy : Prop
  entropy : Prop
  temperature : Prop
  gibbsFreeEnergyFormula : Prop

structure GibbsFreeEnergyEvidence (G : GibbsFreeEnergyPackage) where
  enthalpyClosed : G.enthalpy
  entropyClosed : G.entropy
  temperatureClosed : G.temperature
  gibbsFreeEnergyFormulaClosed : G.gibbsFreeEnergyFormula

def GibbsFreeEnergyClosed (G : GibbsFreeEnergyPackage) : Prop :=
  G.enthalpy ∧ G.entropy ∧ G.temperature ∧ G.gibbsFreeEnergyFormula

theorem gibbs_free_energy_closed_from_evidence
    (G : GibbsFreeEnergyPackage) (E : GibbsFreeEnergyEvidence G) :
    GibbsFreeEnergyClosed G := by
  exact And.intro E.enthalpyClosed
    (And.intro E.entropyClosed
      (And.intro E.temperatureClosed E.gibbsFreeEnergyFormulaClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse