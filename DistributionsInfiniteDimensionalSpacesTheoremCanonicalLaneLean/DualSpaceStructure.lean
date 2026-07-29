import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DualSpacePackage where
  originalSpace : Type u
  topology : TopologicalSpace originalSpace
  dualSpace : Type v
  weakDual : Type w
  strongDual : Type x
  bornologicalSpace : Prop
  reflexive : Prop
  barreled : Prop
  complete : Prop

def DualSpaceClosed (P : DualSpacePackage) : Prop :=
  P.bornologicalSpace ∧ P.reflexive ∧ P.barreled ∧ P.complete

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse