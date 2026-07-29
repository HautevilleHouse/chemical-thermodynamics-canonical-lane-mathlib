import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  reactionQuotient : Prop
  standardGibbsEnergyChange : Prop
  equilibriumCondition : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  reactionQuotientClosed : E.reactionQuotient
  standardGibbsEnergyChangeClosed : E.standardGibbsEnergyChange
  equilibriumConditionClosed : E.equilibriumCondition

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.reactionQuotient ∧
  E.standardGibbsEnergyChange ∧ E.equilibriumCondition

theorem chemical_equilibrium_closed_from_evidence
    (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) :
    ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed
    (And.intro Ev.reactionQuotientClosed
      (And.intro Ev.standardGibbsEnergyChangeClosed Ev.equilibriumConditionClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse