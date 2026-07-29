import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DistributionDualSpacePackage where
  testFunctionSpace : TestFunctionSpacePackage
  dualSpace : Type u
  linearFunctionalStructure : Module ℝ dualSpace
  continuityCondition : Prop
  weakStarTopology : TopologicalSpace dualSpace

structure DistributionDualSpaceEvidence (D : DistributionDualSpacePackage) where
  continuityConditionClosed : D.continuityCondition
  weakStarTopologyClosed : True

def DistributionDualSpaceClosed (D : DistributionDualSpacePackage) : Prop :=
  D.continuityCondition

theorem distribution_dual_space_closed_from_evidence
    (D : DistributionDualSpacePackage) (E : DistributionDualSpaceEvidence D) :
    DistributionDualSpaceClosed D := by
  exact E.continuityConditionClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse