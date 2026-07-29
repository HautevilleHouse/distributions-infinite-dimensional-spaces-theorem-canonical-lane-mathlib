import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure FourierTransformContinuityPackage where
  schwartzSpace : SchwartzSpacePackage
  fourierTransform : Type u
  continuityInSchwartz : Prop
  extendsToTemperedDistributions : Prop

structure FourierTransformContinuityEvidence (F : FourierTransformContinuityPackage) where
  continuityInSchwartzClosed : F.continuityInSchwartz
  extendsToTemperedDistributionsClosed : F.extendsToTemperedDistributions

def FourierTransformContinuityClosed (F : FourierTransformContinuityPackage) : Prop :=
  F.continuityInSchwartz ∧ F.extendsToTemperedDistributions

theorem fourier_transform_continuity_closed_from_evidence
    (F : FourierTransformContinuityPackage) (E : FourierTransformContinuityEvidence F) :
    FourierTransformContinuityClosed F := by
  exact And.intro E.continuityInSchwartzClosed E.extendsToTemperedDistributionsClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse