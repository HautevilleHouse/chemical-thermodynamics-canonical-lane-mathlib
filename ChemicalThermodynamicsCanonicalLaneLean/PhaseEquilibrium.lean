import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure PhaseEquilibriumPackage where
  phaseCount : Nat
  equilibriumCondition : Prop
  clapeyronRelation : Prop
  criticalPointClassified : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  clapeyronRelationClosed : P.clapeyronRelation
  criticalPointClassifiedClosed : P.criticalPointClassified

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.equilibriumCondition ∧ P.clapeyronRelation ∧ P.criticalPointClassified

theorem phase_equilibrium_closed (P : PhaseEquilibriumPackage) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.clapeyronRelationClosed E.criticalPointClassifiedClosed)

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse