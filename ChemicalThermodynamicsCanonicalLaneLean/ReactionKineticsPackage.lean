import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  arrheniusEquation : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateConstantClosed : K.rateConstant
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence
  arrheniusEquationClosed : K.arrheniusEquation

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateConstant ∧ K.activationEnergy ∧ K.temperatureDependence ∧ K.arrheniusEquation

theorem reaction_kinetics_closed_from_evidence
    (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.rateConstantClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed E.arrheniusEquationClosed))

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse