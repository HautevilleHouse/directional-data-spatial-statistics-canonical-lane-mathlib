import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure NeymanPearsonPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  rejectionRegion : Prop
  mostPowerfulTest : Prop
  likelihoodRatio : Prop

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.mostPowerfulTest ∧ N.likelihoodRatio

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse