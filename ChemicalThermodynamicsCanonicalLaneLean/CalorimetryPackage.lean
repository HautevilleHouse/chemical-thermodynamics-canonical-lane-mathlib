import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure CalorimetryPackage where
  heatCapacity : Prop
  enthalpyChange : Prop
  heatFlow : Prop
  temperatureChange : Prop

structure CalorimetryEvidence (C : CalorimetryPackage) where
  heatCapacityClosed : C.heatCapacity
  enthalpyChangeClosed : C.enthalpyChange
  heatFlowClosed : C.heatFlow
  temperatureChangeClosed : C.temperatureChange

def CalorimetryClosed (C : CalorimetryPackage) : Prop :=
  C.heatCapacity ∧ C.enthalpyChange ∧ C.heatFlow ∧ C.temperatureChange

theorem calorimetry_closed_from_evidence
    (C : CalorimetryPackage) (E : CalorimetryEvidence C) :
    CalorimetryClosed C := by
  exact And.intro E.heatCapacityClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.heatFlowClosed E.temperatureChangeClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse