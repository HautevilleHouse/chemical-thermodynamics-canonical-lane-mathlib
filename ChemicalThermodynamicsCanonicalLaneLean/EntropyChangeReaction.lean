import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure EntropyChangeReactionPackage where
  reaction : String
  temperature : Float
  entropyChange : Float
  secondLawSatisfied : Prop

structure EntropyChangeReactionEvidence (S : EntropyChangeReactionPackage) where
  secondLawSatisfiedClosed : S.secondLawSatisfied

def EntropyChangeReactionClosed (S : EntropyChangeReactionPackage) : Prop :=
  S.secondLawSatisfied

theorem entropy_change_reaction_closed_from_evidence (S : EntropyChangeReactionPackage)
    (Ev : EntropyChangeReactionEvidence S) : EntropyChangeReactionClosed S :=
  Ev.secondLawSatisfiedClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse