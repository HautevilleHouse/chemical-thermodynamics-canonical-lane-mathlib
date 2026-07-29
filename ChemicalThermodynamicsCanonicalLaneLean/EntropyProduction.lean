import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure EntropyProductionPackage where
  rateOfEntropyGeneration : Prop
  secondLawInequality : Prop
  localEquilibrium : Prop
  heatConductionTerm : Prop

structure EntropyProductionEvidence (P : EntropyProductionPackage) where
  rateOfEntropyGenerationClosed : P.rateOfEntropyGeneration
  secondLawInequalityClosed : P.secondLawInequality
  localEquilibriumClosed : P.localEquilibrium
  heatConductionTermClosed : P.heatConductionTerm

def EntropyProductionClosed (P : EntropyProductionPackage) : Prop :=
  P.rateOfEntropyGeneration ∧ P.secondLawInequality ∧ P.localEquilibrium ∧ P.heatConductionTerm

theorem entropy_production_closed (P : EntropyProductionPackage) (E : EntropyProductionEvidence P) :
    EntropyProductionClosed P := by
  exact And.intro E.rateOfEntropyGenerationClosed
    (And.intro E.secondLawInequalityClosed
      (And.intro E.localEquilibriumClosed E.heatConductionTermClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse