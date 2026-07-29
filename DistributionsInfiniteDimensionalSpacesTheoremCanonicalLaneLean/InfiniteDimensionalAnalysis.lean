import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure FréchetSpace (T : TestFunctionSpace) where
  seminormCount : ℕ
  completeness : Prop
  metricDefined : Prop

structure NuclearSpace (T : TestFunctionSpace) (F : FréchetSpace T) where
  nuclearity : Prop
  grothendieckPietschCondition : Prop

structure InfiniteDimensionalAnalysisPackage (T : TestFunctionSpace) (S : SchwartzSpace T)
    (TD : TemperedDistributions T S) (H : SobolevSpace T S TD) (F : FréchetSpace T) where
  frechetCovered : F.completeness
  nuclearCovered : Prop
  montelProperty : Prop

structure InfiniteDimensionalAnalysisEvidence {T : TestFunctionSpace} {S : SchwartzSpace T}
    {TD : TemperedDistributions T S} {H : SobolevSpace T S TD} {F : FréchetSpace T}
    (P : InfiniteDimensionalAnalysisPackage T S TD H F) where
  frechetCoveredClosed : P.frechetCovered
  nuclearCoveredClosed : P.nuclearCovered
  montelPropertyClosed : P.montelProperty

def InfiniteDimensionalAnalysisClosed {T : TestFunctionSpace} {S : SchwartzSpace T}
    {TD : TemperedDistributions T S} {H : SobolevSpace T S TD} {F : FréchetSpace T}
    (P : InfiniteDimensionalAnalysisPackage T S TD H F) : Prop :=
  P.frechetCovered ∧ P.nuclearCovered ∧ P.montelProperty

theorem infinite_dimensional_analysis_closed_from_evidence
    {T : TestFunctionSpace} {S : SchwartzSpace T} {TD : TemperedDistributions T S}
    {H : SobolevSpace T S TD} {F : FréchetSpace T}
    (P : InfiniteDimensionalAnalysisPackage T S TD H F) (E : InfiniteDimensionalAnalysisEvidence P) :
    InfiniteDimensionalAnalysisClosed P := by
  exact And.intro E.frechetCoveredClosed (And.intro E.nuclearCoveredClosed E.montelPropertyClosed)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse