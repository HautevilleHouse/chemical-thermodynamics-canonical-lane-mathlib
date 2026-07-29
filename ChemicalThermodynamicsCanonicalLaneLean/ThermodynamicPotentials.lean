import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ThermodynamicPotentialsPackage where
  internalEnergy : Prop
  helmholtzFreeEnergy : Prop
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  maxwellRelations : Prop

structure ThermodynamicPotentialsEvidence (P : ThermodynamicPotentialsPackage) where
  internalEnergyClosed : P.internalEnergy
  helmholtzFreeEnergyClosed : P.helmholtzFreeEnergy
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  enthalpyClosed : P.enthalpy
  maxwellRelationsClosed : P.maxwellRelations

def ThermodynamicPotentialsClosed (P : ThermodynamicPotentialsPackage) : Prop :=
  P.internalEnergy ∧ P.helmholtzFreeEnergy ∧ P.gibbsFreeEnergy ∧ P.enthalpy ∧ P.maxwellRelations

theorem thermodynamic_potentials_closed (P : ThermodynamicPotentialsPackage) (E : ThermodynamicPotentialsEvidence P) :
    ThermodynamicPotentialsClosed P := by
  exact And.intro E.internalEnergyClosed
    (And.intro E.helmholtzFreeEnergyClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.enthalpyClosed E.maxwellRelationsClosed)))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse