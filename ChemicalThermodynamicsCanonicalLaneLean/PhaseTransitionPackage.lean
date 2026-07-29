import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure PhaseTransitionPackage where
  phaseDiagram : Prop
  clausiusClapeyron : Prop
  latentHeat : Prop
  phaseEquilibriumCondition : Prop

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  phaseDiagramClosed : P.phaseDiagram
  clausiusClapeyronClosed : P.clausiusClapeyron
  latentHeatClosed : P.latentHeat
  phaseEquilibriumConditionClosed : P.phaseEquilibriumCondition

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.phaseDiagram ∧ P.clausiusClapeyron ∧ P.latentHeat ∧ P.phaseEquilibriumCondition

theorem phase_transition_closed_from_evidence
    (P : PhaseTransitionPackage) (E : PhaseTransitionEvidence P) :
    PhaseTransitionClosed P := by
  exact And.intro E.phaseDiagramClosed
    (And.intro E.clausiusClapeyronClosed
      (And.intro E.latentHeatClosed E.phaseEquilibriumConditionClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse