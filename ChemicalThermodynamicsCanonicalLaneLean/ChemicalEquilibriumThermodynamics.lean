import ChemicalThermodynamicsCanonicalLaneLean.ChemicalAdmissibleClass

namespace HautevilleHouse
namespace ChemicalThermodynamicsCanonicalLaneLean

structure ChemicalPotentialPackage where
  species : Type u
  chemicalPotential : species → ℝ
  activity : species → ℝ
  standardPotential : ℝ
  gasConstant : ℝ
  temperature : ℝ
  equilibriumConstant : ℝ
  gibbsFreeEnergyChange : ℝ
  deltaGCondition : deltaG = 0
  deltaG : ℝ := gibbsFreeEnergyChange
  equilibriumExpression : ℝ := -gasConstant * temperature * Real.log equilibriumConstant
  consistent : deltaG = 0 → gibbsFreeEnergyChange = equilibriumExpression

structure ReactionThermodynamicsPackage where
  reactants : List ℝ
  products : List ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  temperature : ℝ
  gibbsFreeEnergyChange : ℝ := enthalpyChange - temperature * entropyChange
  spontaneityCondition : gibbsFreeEnergyChange < 0
  equilibriumCondition : gibbsFreeEnergyChange = 0

def spontaneityClosed (R : ReactionThermodynamicsPackage) : Prop :=
  R.gibbsFreeEnergyChange < 0 ∨ R.gibbsFreeEnergyChange = 0

end ChemicalThermodynamicsCanonicalLaneLean
end HautevilleHouse