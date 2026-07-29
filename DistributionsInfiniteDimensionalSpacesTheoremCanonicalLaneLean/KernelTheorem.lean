import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure KernelTheoremPackage where
  schwartzSpace : SchwartzSpacePackage
  bilinearFunctional : Type u
  kernelDistribution : Type v
  nuclearityCondition : Prop
  representationFormula : Prop

structure KernelTheoremEvidence (K : KernelTheoremPackage) where
  nuclearityConditionClosed : K.nuclearityCondition
  representationFormulaClosed : K.representationFormula

def KernelTheoremClosed (K : KernelTheoremPackage) : Prop :=
  K.nuclearityCondition ∧ K.representationFormula

theorem kernel_theorem_closed_from_evidence
    (K : KernelTheoremPackage) (E : KernelTheoremEvidence K) :
    KernelTheoremClosed K := by
  exact And.intro E.nuclearityConditionClosed E.representationFormulaClosed

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse