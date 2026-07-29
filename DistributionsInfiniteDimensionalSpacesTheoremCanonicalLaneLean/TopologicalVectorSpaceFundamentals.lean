import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure LocallyConvexTopologicalVectorSpace where
  carrier : Type u
  vectorSpace : Module ℝ carrier
  topology : TopologicalSpace carrier
  locallyConvex : Prop
  hausdorff : Prop

def LocallyConvexClosed (V : LocallyConvexTopologicalVectorSpace) : Prop :=
  V.locallyConvex ∧ V.hausdorff

theorem LocallyConvexEndgame (V : LocallyConvexTopologicalVectorSpace) :
    LocallyConvexClosed V := by
  exact And.intro V.locallyConvex V.hausdorff

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse