import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.GaussianMeasures

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure CameronMartinPackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  gaussian : GaussianMeasurePackage X
  shift : X → X
  absoluteContinuity : Prop
  radonNikodymDerivative : X → ℝ
  formula : ∀ h : X, d(gaussian.measure ∘ (x ↦ x + h)) / d(gaussian.measure) = 
    exp(⟨h, gaussian.covariance⁻¹ x⟩ - 0.5*⟨h, gaussian.covariance⁻¹ h⟩)

def CameronMartinClosed (C : CameronMartinPackage X) : Prop :=
  C.absoluteContinuity ∧ C.formula

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
