import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TopologicalVectorSpacePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  vectorSpaceStructure : Module ℝ underlyingSpace
  vectorAdditionContinuous : Prop
  scalarMultiplicationContinuous : Prop
  locallyConvex : Prop

structure TopologicalVectorSpaceEvidence (T : TopologicalVectorSpacePackage) where
  vectorAdditionContinuousClosed : T.vectorAdditionContinuous
  scalarMultiplicationContinuousClosed : T.scalarMultiplicationContinuous
  locallyConvexClosed : T.locallyConvex

def TopologicalVectorSpaceClosed (T : TopologicalVectorSpacePackage) : Prop :=
  T.vectorAdditionContinuous ∧ T.scalarMultiplicationContinuous ∧ T.locallyConvex

theorem topological_vector_space_closed_from_evidence
    (T : TopologicalVectorSpacePackage) (E : TopologicalVectorSpaceEvidence T) :
    TopologicalVectorSpaceClosed T := by
  exact And.intro E.vectorAdditionContinuousClosed
    (And.intro E.scalarMultiplicationContinuousClosed E.locallyConvexClosed)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse