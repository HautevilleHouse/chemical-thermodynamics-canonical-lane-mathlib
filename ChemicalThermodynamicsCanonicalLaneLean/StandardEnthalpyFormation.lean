import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure StandardEnthalpyFormationPackage where
  compound : String
  formationReaction : String
  enthalpy : Float
  standardConditions : Prop
  enthalpyMeasured : Prop

structure StandardEnthalpyFormationEvidence (E : StandardEnthalpyFormationPackage) where
  standardConditionsClosed : E.standardConditions
  enthalpyMeasuredClosed : E.enthalpyMeasured

def StandardEnthalpyFormationClosed (E : StandardEnthalpyFormationPackage) : Prop :=
  E.standardConditions ∧ E.enthalpyMeasured

theorem standard_enthalpy_formation_closed_from_evidence (E : StandardEnthalpyFormationPackage)
    (Ev : StandardEnthalpyFormationEvidence E) : StandardEnthalpyFormationClosed E :=
  And.intro Ev.standardConditionsClosed Ev.enthalpyMeasuredClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse