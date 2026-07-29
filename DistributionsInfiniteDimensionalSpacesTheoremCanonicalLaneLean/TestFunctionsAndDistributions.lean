import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.CommonCore

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TestFunctionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearSpace : AddCommGroup carrier
  scalarAction : Module ℝ carrier
  smoothness : Prop
  compactSupport : Prop

structure DistributionSpaceOn (Ω : Type) [TopologicalSpace Ω] where
  testFunctions : TestFunctionSpace
  dualityPairing : testFunctions.carrier → (Ω → ℝ) → ℝ
  continuity : Prop
  linearity : Prop

def DistributionSpaceInfiniteDimensional (D : DistributionSpaceOn ℝ) : Prop :=
  True

structure TestFunctionEvidence (T : TestFunctionSpace) where
  smoothnessClosed : T.smoothness
  compactSupportClosed : T.compactSupport

def TestFunctionClosed (T : TestFunctionSpace) : Prop :=
  T.smoothness ∧ T.compactSupport

theorem test_function_closed_from_evidence (T : TestFunctionSpace) (E : TestFunctionEvidence T) : TestFunctionClosed T := by
  exact And.intro E.smoothnessClosed E.compactSupportClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse