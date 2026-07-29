import ChemicalThermodynamicsCanonicalLaneLean.ChemicalGateLemmas

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

def ConstrainedChemicalThermoClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_thermo_endgame (A : AdmissibleClass) :
    ConstrainedChemicalThermoClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse