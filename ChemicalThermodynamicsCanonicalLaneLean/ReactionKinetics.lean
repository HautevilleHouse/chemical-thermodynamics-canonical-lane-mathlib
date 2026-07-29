import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  arrheniusLaw : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (P : ReactionKineticsPackage) where
  rateLawClosed : P.rateLaw
  activationEnergyClosed : P.activationEnergy
  arrheniusLawClosed : P.arrheniusLaw
  equilibriumConstantClosed : P.equilibriumConstant

def ReactionKineticsClosed (P : ReactionKineticsPackage) : Prop :=
  P.rateLaw ∧ P.activationEnergy ∧ P.arrheniusLaw ∧ P.equilibriumConstant

theorem reaction_kinetics_closed (P : ReactionKineticsPackage) (E : ReactionKineticsEvidence P) :
    ReactionKineticsClosed P := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.arrheniusLawClosed E.equilibriumConstantClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse