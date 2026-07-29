import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DistributionSpace (T : TestFunctionSpace) where
  dualSpace : Type u
  linearStructure : Module ℝ dualSpace
  weakStarTopology : TopologicalSpace dualSpace
  continuousLinearFunctionals : Prop
  distributionAction : T.carrierSpace → dualSpace → ℝ
  actionProperties : Prop
  continuousEmbedding : T.carrierSpace → dualSpace

def distributionSpaceClosed (T : TestFunctionSpace) (D : DistributionSpace T) : Prop :=
  D.continuousLinearFunctionals ∧ D.actionProperties

theorem distributionSpace_closed_from_properties (T : TestFunctionSpace) (D : DistributionSpace T) : distributionSpaceClosed T D :=
  And.intro D.continuousLinearFunctionals D.actionProperties

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse