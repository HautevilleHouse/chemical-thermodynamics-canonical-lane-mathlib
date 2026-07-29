import ChemicalThermodynamicsCanonicalLaneLean.ChemicalAdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

def ChemicalThermoWitnessClosed (O : ChemicalThermoAdmittedObject) : Prop :=
  O.equilibriumCondition

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalThermoWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse