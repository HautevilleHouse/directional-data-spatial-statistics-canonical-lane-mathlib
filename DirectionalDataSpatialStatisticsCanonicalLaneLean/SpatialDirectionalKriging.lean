import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SpatialDirectionalKriging where
  spatialDomain : Type u
  directionalCovariance : Prop
  variogramModel : Prop
  krigingWeights : Prop
  predictionVariance : Prop
  bestLinearUnbiased : Prop
  krigingClosed : Prop

def SpatialDirectionalKrigingClosed (K : SpatialDirectionalKriging) : Prop :=
  K.directionalCovariance ∧ K.variogramModel ∧ K.krigingWeights ∧
  K.predictionVariance ∧ K.bestLinearUnbiased ∧ K.krigingClosed

structure SpatialDirectionalKrigingEvidence (K : SpatialDirectionalKriging) where
  directionalCovarianceClosed : K.directionalCovariance
  variogramModelClosed : K.variogramModel
  krigingWeightsClosed : K.krigingWeights
  predictionVarianceClosed : K.predictionVariance
  bestLinearUnbiasedClosed : K.bestLinearUnbiased
  krigingClosedClosed : K.krigingClosed

theorem spatial_directional_kriging_closed_from_evidence
    (K : SpatialDirectionalKriging) (E : SpatialDirectionalKrigingEvidence K) :
    SpatialDirectionalKrigingClosed K := by
  exact And.intro E.directionalCovarianceClosed
    (And.intro E.variogramModelClosed
      (And.intro E.krigingWeightsClosed
        (And.intro E.predictionVarianceClosed
          (And.intro E.bestLinearUnbiasedClosed E.krigingClosedClosed))))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse