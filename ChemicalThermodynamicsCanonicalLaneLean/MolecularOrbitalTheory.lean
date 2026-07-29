import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  wavefunction : Type u
  orbitalEnergy : Type v
  huckelMethod : Prop
  linearCombination : Prop
  energyLevels : Prop
  huckelMethodClosed : huckelMethod
  linearCombinationClosed : linearCombination
  energyLevelsClosed : energyLevels

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  huckelMethodClosed : M.huckelMethod
  linearCombinationClosed : M.linearCombination
  energyLevelsClosed : M.energyLevels

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.huckelMethod ∧ M.linearCombination ∧ M.energyLevels

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.huckelMethodClosed (And.intro E.linearCombinationClosed E.energyLevelsClosed)

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse