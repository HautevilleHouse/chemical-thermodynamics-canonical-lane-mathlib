import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ChemicalEquilibriumConstantPackage where
  reaction : String
  temperature : Float
  equilibriumConstant : Float
  relationshipToDeltaG : Prop

structure ChemicalEquilibriumConstantEvidence (K : ChemicalEquilibriumConstantPackage) where
  relationshipToDeltaGClosed : K.relationshipToDeltaG

def ChemicalEquilibriumConstantClosed (K : ChemicalEquilibriumConstantPackage) : Prop :=
  K.relationshipToDeltaG

theorem chemical_equilibrium_constant_closed_from_evidence (K : ChemicalEquilibriumConstantPackage)
    (Ev : ChemicalEquilibriumConstantEvidence K) : ChemicalEquilibriumConstantClosed K :=
  Ev.relationshipToDeltaGClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse