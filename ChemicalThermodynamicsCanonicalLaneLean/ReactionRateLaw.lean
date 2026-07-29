import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ReactionRateLawPackage where
  reaction : String
  rateConstant : Float
  order : Nat
  activationEnergy : Float
  temperatureDependence : Prop

structure ReactionRateLawEvidence (R : ReactionRateLawPackage) where
  temperatureDependenceClosed : R.temperatureDependence

def ReactionRateLawClosed (R : ReactionRateLawPackage) : Prop :=
  R.temperatureDependence

theorem reaction_rate_law_closed_from_evidence (R : ReactionRateLawPackage)
    (Ev : ReactionRateLawEvidence R) : ReactionRateLawClosed R :=
  Ev.temperatureDependenceClosed

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse