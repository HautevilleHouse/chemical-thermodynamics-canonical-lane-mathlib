import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ThermodynamicsAdmittedObject where
  system : Type
  stateSpace : TopologicalSpace system
  equilibriumManifold : Prop
  secondLawEntropy : Prop
  conclusion : secondLawEntropy

def ThermodynamicsWitnessClosed (O : ThermodynamicsAdmittedObject) : Prop :=
  O.secondLawEntropy

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse
