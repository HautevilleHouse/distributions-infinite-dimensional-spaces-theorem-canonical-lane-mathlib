import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DistributionSpace
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure ConvergenceStructure (T : TestFunctionSpace) (D : DistributionSpace T) where
  sequenceConvergence : (ℕ → D.dualSpace) → D.dualSpace → Prop
  weakConvergence : (ℕ → D.dualSpace) → D.dualSpace → Prop
  equivalence : ∀ (seq : ℕ → D.dualSpace) (x : D.dualSpace), sequenceConvergence seq x ↔ weakConvergence seq x
  sequentialCompleteness : Prop
  closedGraph : Prop

def convergenceStructureClosed (T : TestFunctionSpace) (D : DistributionSpace T) (C : ConvergenceStructure T D) : Prop :=
  C.sequentialCompleteness ∧ C.closedGraph

theorem convergenceStructure_closed_from_properties (T : TestFunctionSpace) (D : DistributionSpace T) (C : ConvergenceStructure T D) : convergenceStructureClosed T D C :=
  And.intro C.sequentialCompleteness C.closedGraph

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse