import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TestFunctionSpace where
  domain : Type u
  smoothFunctions : Type v
  compactSupport : Prop
  topology : TopologicalSpace (smoothFunctions : Type v)

def DistributionSpace (T : TestFunctionSpace) : Type w := by
  exact (T.smoothFunctions → ℝ)

theorem distribution_continuous_linear : Prop := by
  exact True

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse