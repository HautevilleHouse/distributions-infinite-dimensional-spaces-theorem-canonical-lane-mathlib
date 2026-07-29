import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TestFunctionSpace where
  testFunctions : Type u
  topology : TopologicalSpace testFunctions
  smoothCompactSupport : Prop
  completeness : Prop

structure TestFunctionSpaceEvidence (T : TestFunctionSpace) where
  smoothCompactSupportClosed : T.smoothCompactSupport
  completenessClosed : T.completeness

def TestFunctionSpaceClosed (T : TestFunctionSpace) : Prop :=
  T.smoothCompactSupport ∧ T.completeness

theorem test_function_space_closed_from_evidence (T : TestFunctionSpace) (E : TestFunctionSpaceEvidence T) :
    TestFunctionSpaceClosed T := by
  exact And.intro E.smoothCompactSupportClosed E.completenessClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse