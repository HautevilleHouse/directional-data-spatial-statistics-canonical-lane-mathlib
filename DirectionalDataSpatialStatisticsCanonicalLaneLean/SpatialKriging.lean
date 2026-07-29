import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.DirectionalProcesses

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SpatialKrigingPackage {D : DirectionalProcessPackage} where
  variogramModel : Type u
  krigingPredictor : Prop
  predictionError : Prop
  bestLinearUnbiased : Prop

structure SpatialKrigingEvidence {D : DirectionalProcessPackage}
    (K : SpatialKrigingPackage D) where
  krigingPredictorClosed : K.krigingPredictor
  predictionErrorClosed : K.predictionError
  bestLinearUnbiasedClosed : K.bestLinearUnbiased

def SpatialKrigingClosed {D : DirectionalProcessPackage}
    (K : SpatialKrigingPackage D) : Prop :=
  K.krigingPredictor ∧ K.predictionError ∧ K.bestLinearUnbiased

theorem spatial_kriging_closed_from_evidence {D : DirectionalProcessPackage}
    (K : SpatialKrigingPackage D) (ev : SpatialKrigingEvidence K) :
    SpatialKrigingClosed K := by
  exact And.intro ev.krigingPredictorClosed
    (And.intro ev.predictionErrorClosed ev.bestLinearUnbiasedClosed)

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
