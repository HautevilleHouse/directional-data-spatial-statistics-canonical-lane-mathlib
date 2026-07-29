import DirectionalDataSpatialStatisticsCanonicalLaneLean.ExponentialFamily

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SufficiencyPackage {E : ExponentialFamilyPackage} where
  statistic : E.sampleSpace → ℝᵐ
  factorizationCriterion : Prop
  minimalSufficiency : Prop
  completeness : Prop

structure SufficiencyEvidence {E : ExponentialFamilyPackage} (S : SufficiencyPackage E) where
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficiencyClosed : S.minimalSufficiency
  completenessClosed : S.completeness

def SufficiencyClosed {E : ExponentialFamilyPackage} (S : SufficiencyPackage E) : Prop :=
  S.factorizationCriterion ∧ S.minimalSufficiency ∧ S.completeness

theorem sufficiency_closed_from_evidence {E : ExponentialFamilyPackage}
    (S : SufficiencyPackage E) (ev : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro ev.factorizationCriterionClosed
    (And.intro ev.minimalSufficiencyClosed ev.completenessClosed)

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
