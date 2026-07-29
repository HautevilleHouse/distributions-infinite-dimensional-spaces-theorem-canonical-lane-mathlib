import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TestFunctionSpace where
  carrierSpace : Type u
  topology : TopologicalSpace carrierSpace
  linearStructure : Module ℝ carrierSpace
  smoothness : Prop
  compactSupport : Prop
  closureProperties : Prop

def testFunctionSpaceClosed (T : TestFunctionSpace) : Prop :=
  T.smoothness ∧ T.compactSupport ∧ T.closureProperties

theorem testFunctionSpace_closed_from_properties (T : TestFunctionSpace) : testFunctionSpaceClosed T :=
  And.intro T.smoothness (And.intro T.compactSupport T.closureProperties)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse