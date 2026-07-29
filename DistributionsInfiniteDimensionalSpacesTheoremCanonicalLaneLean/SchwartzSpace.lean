import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure SchwartzSpacePackage where
  euclideanSpace : Type u
  topology : TopologicalSpace euclideanSpace
  smoothRapidDecay : Prop
  semiNormFamily : Type v
  frechetSpaceProperty : Prop
  nuclearSpaceProperty : Prop

structure SchwartzSpaceEvidence (S : SchwartzSpacePackage) where
  smoothRapidDecayClosed : S.smoothRapidDecay
  frechetSpacePropertyClosed : S.frechetSpaceProperty
  nuclearSpacePropertyClosed : S.nuclearSpaceProperty

def SchwartzSpaceClosed (S : SchwartzSpacePackage) : Prop :=
  S.smoothRapidDecay ∧ S.frechetSpaceProperty ∧ S.nuclearSpaceProperty

theorem schwartz_space_closed_from_evidence
    (S : SchwartzSpacePackage) (E : SchwartzSpaceEvidence S) :
    SchwartzSpaceClosed S := by
  exact And.intro E.smoothRapidDecayClosed
    (And.intro E.frechetSpacePropertyClosed E.nuclearSpacePropertyClosed)

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse