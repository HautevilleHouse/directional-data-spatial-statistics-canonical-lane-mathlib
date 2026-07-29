import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalKrigingPackage where
  krigingPredictor : Type u
  predictionVariance : Type v
  blupOptimality : Prop
  directionalCovariance : Prop
  endpointReached : Prop

def DirectionalKrigingClosed (K : DirectionalKrigingPackage) : Prop :=
  K.blupOptimality ∧ K.directionalCovariance ∧ K.endpointReached

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse