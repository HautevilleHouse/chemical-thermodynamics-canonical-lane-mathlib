import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ChemicalThermoAdmittedObject where
  substance : Type
  stateVariables : Type
  equilibriumCondition : Prop
  conclusion : equilibriumCondition

structure AdmissibleClass where
  object : ChemicalThermoAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalThermoWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse