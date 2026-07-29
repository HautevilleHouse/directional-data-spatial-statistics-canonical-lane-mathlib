import DirectionalDataSpatialStatisticsCanonicalLaneLean.NeymanPearson

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure MLEConsistencyPackage {E : ExponentialFamilyPackage} where
  mleEstimator : Prop
  consistency : Prop
  asymptoticNormality : Prop

structure MLEConsistencyEvidence {E : ExponentialFamilyPackage}
    (M : MLEConsistencyPackage E) where
  mleEstimatorClosed : M.mleEstimator
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEConsistencyClosed {E : ExponentialFamilyPackage}
    (M : MLEConsistencyPackage E) : Prop :=
  M.mleEstimator ∧ M.consistency ∧ M.asymptoticNormality

theorem mle_consistency_closed_from_evidence {E : ExponentialFamilyPackage}
    (M : MLEConsistencyPackage E) (ev : MLEConsistencyEvidence M) : MLEConsistencyClosed M := by
  exact And.intro ev.mleEstimatorClosed
    (And.intro ev.consistencyClosed ev.asymptoticNormalityClosed)

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
