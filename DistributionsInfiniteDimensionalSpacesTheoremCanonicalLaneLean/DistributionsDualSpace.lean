import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DistributionsTestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DistributionsDualSpace (T : TestFunctionSpace) where
  continuousLinearFunctionals : Type u
  weakStarTopology : TopologicalSpace continuousLinearFunctionals
  distributionalDerivative : Prop
  convolutionDefined : Prop

structure DistributionsDualSpaceEvidence {T : TestFunctionSpace} (D : DistributionsDualSpace T) where
  distributionalDerivativeClosed : D.distributionalDerivative
  convolutionDefinedClosed : D.convolutionDefined

def DistributionsDualSpaceClosed {T : TestFunctionSpace} (D : DistributionsDualSpace T) : Prop :=
  D.distributionalDerivative ∧ D.convolutionDefined

theorem distributions_dual_space_closed_from_evidence
    {T : TestFunctionSpace} (D : DistributionsDualSpace T) (E : DistributionsDualSpaceEvidence D) :
    DistributionsDualSpaceClosed D := by
  exact And.intro E.distributionalDerivativeClosed E.convolutionDefinedClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse