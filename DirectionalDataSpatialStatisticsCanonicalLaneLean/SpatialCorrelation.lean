import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SpatialCorrelationPackage where
  variogramModel : Type u
  covarianceFunction : Type v
  isotropy : Prop
  stationarity : Prop
  krigingPredictor : Prop
  spatialContinuity : Prop

structure SpatialCorrelationEvidence (S : SpatialCorrelationPackage) where
  isotropyClosed : S.isotropy
  stationarityClosed : S.stationarity
  krigingPredictorClosed : S.krigingPredictor
  spatialContinuityClosed : S.spatialContinuity

def SpatialCorrelationClosed (S : SpatialCorrelationPackage) : Prop :=
  S.isotropy ∧ S.stationarity ∧ S.krigingPredictor ∧ S.spatialContinuity

theorem spatial_correlation_closed_from_evidence (S : SpatialCorrelationPackage) (E : SpatialCorrelationEvidence S) : SpatialCorrelationClosed S := by
  exact And.intro E.isotropyClosed (And.intro E.stationarityClosed (And.intro E.krigingPredictorClosed E.spatialContinuityClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse