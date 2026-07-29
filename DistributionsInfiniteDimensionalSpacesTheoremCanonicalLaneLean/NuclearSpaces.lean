import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.KernelTheorem

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure NuclearSpace extends TopologicalVectorSpace where
  nuclearProperty : Prop
  approximationProperty : Prop
  grothendieckPietschCriterion : Prop

structure NuclearSpaceEvidence (N : NuclearSpace) where
  nuclearPropertyClosed : N.nuclearProperty
  approximationPropertyClosed : N.approximationProperty
  grothendieckPietschCriterionClosed : N.grothendieckPietschCriterion

def NuclearSpaceClosed (N : NuclearSpace) : Prop :=
  N.nuclearProperty ∧ N.approximationProperty ∧ N.grothendieckPietschCriterion

theorem nuclear_space_closed_from_evidence (N : NuclearSpace) (E : NuclearSpaceEvidence N) :
    NuclearSpaceClosed N := by
  exact And.intro E.nuclearPropertyClosed (And.intro E.approximationPropertyClosed E.grothendieckPietschCriterionClosed)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse