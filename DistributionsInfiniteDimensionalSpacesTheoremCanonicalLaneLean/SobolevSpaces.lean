import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.SchwartzTemperedDistributions

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure SobolevSpace (T : TestFunctionSpace) (S : SchwartzSpace T) (TD : TemperedDistributions T S) where
  order : ℕ
  integrability : ℕ
  normedSpace : Prop
  embeddingTheorems : Prop

structure SobolevSpaceEvidence {T : TestFunctionSpace} {S : SchwartzSpace T} {TD : TemperedDistributions T S}
    (H : SobolevSpace T S TD) where
  normedSpaceClosed : H.normedSpace
  embeddingTheoremsClosed : H.embeddingTheorems

def SobolevSpaceClosed {T : TestFunctionSpace} {S : SchwartzSpace T} {TD : TemperedDistributions T S}
    (H : SobolevSpace T S TD) : Prop :=
  H.normedSpace ∧ H.embeddingTheorems

theorem sobolev_space_closed_from_evidence
    {T : TestFunctionSpace} {S : SchwartzSpace T} {TD : TemperedDistributions T S}
    (H : SobolevSpace T S TD) (E : SobolevSpaceEvidence H) : SobolevSpaceClosed H := by
  exact And.intro E.normedSpaceClosed E.embeddingTheoremsClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse