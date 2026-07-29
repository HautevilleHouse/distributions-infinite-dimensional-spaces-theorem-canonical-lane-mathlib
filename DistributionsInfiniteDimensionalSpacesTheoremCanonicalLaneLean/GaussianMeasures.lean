import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.BochnerIntegral

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure GaussianMeasurePackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  covariance : ContinuousLinearMap X X
  mean : X
  measure : MeasureTheory.Measure X
  characteristicFunctional : (X → ℝ) → ℂ
  normalization : characteristicFunctional 0 = 1
  quadraticExponent : ∀ φ : X → ℝ, characteristicFunctional φ = exp(-0.5 * ⟨φ, covariance φ⟩ + i*⟨φ, mean⟩)

def GaussianMeasureClosed (G : GaussianMeasurePackage X) : Prop :=
  G.normalization ∧ G.quadraticExponent

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
