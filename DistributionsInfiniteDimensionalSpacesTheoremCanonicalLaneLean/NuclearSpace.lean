import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.SchwartzSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure NuclearSpacePackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  preduality : Type v
  predualNorm : NormedAddCommGroup preduality
  predualComplete : CompleteSpace preduality
  nuclearity : Prop
  canonicalEmbedding : preduality → (X → ℝ)

def NuclearSpaceClosed (N : NuclearSpacePackage X) : Prop :=
  N.nuclearity ∧ N.predualComplete ∧ (∀ x : X, ‖N.canonicalEmbedding x‖ < ∞)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
