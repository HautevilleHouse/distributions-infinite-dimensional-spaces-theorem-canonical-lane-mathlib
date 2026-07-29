import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.NuclearSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure BochnerIntegralPackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  measure : MeasureTheory.Measure X
  integrable : Set (X → ℝ)
  integral : (X → ℝ) → ℝ
  linearity : LinearMap ℝ (X → ℝ) ℝ integral
  continuity : Continuous integral

def BochnerIntegralClosed (B : BochnerIntegralPackage X) : Prop :=
  B.linearity ∧ B.continuity ∧ ∀ f ∈ B.integrable, B.integral f = ∫ x, f x ∂B.measure

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
