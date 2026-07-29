import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DistributionsDualSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure SchwartzSpace (T : TestFunctionSpace) where
  rapidlyDecreasingFunctions : Type u
  seminormFamily : Prop
  frechetSpace : Prop

structure TemperedDistributions (T : TestFunctionSpace) (S : SchwartzSpace T) where
  continuousLinearFunctionals : Type u
  fourierTransformDefined : Prop
  convolutionTempered : Prop

structure TemperedDistributionsEvidence {T : TestFunctionSpace} {S : SchwartzSpace T} (TD : TemperedDistributions T S) where
  fourierTransformDefinedClosed : TD.fourierTransformDefined
  convolutionTemperedClosed : TD.convolutionTempered

def TemperedDistributionsClosed {T : TestFunctionSpace} {S : SchwartzSpace T} (TD : TemperedDistributions T S) : Prop :=
  TD.fourierTransformDefined ∧ TD.convolutionTempered

theorem tempered_distributions_closed_from_evidence
    {T : TestFunctionSpace} {S : SchwartzSpace T} (TD : TemperedDistributions T S)
    (E : TemperedDistributionsEvidence TD) : TemperedDistributionsClosed TD := by
  exact And.intro E.fourierTransformDefinedClosed E.convolutionTemperedClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse