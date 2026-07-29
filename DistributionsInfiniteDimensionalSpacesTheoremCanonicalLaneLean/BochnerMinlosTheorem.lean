import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.NuclearSpaces

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure BochnerMinlosTheoremPackage (N : NuclearSpace) where
  characteristicFunctional : (N.carrier → ℝ) → ℂ
  continuity : Prop
  positivity : Prop
  measureExistence : Prop
  uniqueness : Prop

structure BochnerMinlosEvidence (B : BochnerMinlosTheoremPackage N) where
  continuityClosed : B.continuity
  positivityClosed : B.positivity
  measureExistenceClosed : B.measureExistence
  uniquenessClosed : B.uniqueness

def BochnerMinlosClosed (B : BochnerMinlosTheoremPackage N) : Prop :=
  B.continuity ∧ B.positivity ∧ B.measureExistence ∧ B.uniqueness

theorem bochner_minlos_closed_from_evidence (B : BochnerMinlosTheoremPackage N) (E : BochnerMinlosEvidence B) :
    BochnerMinlosClosed B := by
  exact And.intro E.continuityClosed (And.intro E.positivityClosed (And.intro E.measureExistenceClosed E.uniquenessClosed))

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse