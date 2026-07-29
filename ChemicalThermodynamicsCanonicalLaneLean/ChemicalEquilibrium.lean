import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactionQuotient : Type u
  equilibriumConstant : Type v
  standardGibbsFreeEnergy : Type w
  equilibriumCondition : Prop
  vanTHoffEquation : Prop
  equilibriumConditionClosed : equilibriumCondition
  vanTHoffEquationClosed : vanTHoffEquation

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConditionClosed : E.equilibriumCondition
  vanTHoffEquationClosed : E.vanTHoffEquation

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumCondition ∧ E.vanTHoffEquation

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) :
    ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConditionClosed Ev.vanTHoffEquationClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse