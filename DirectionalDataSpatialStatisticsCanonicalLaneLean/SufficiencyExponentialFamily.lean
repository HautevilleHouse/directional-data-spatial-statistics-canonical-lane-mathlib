import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatistic : Type u
  factorizationTheorem : Prop
  exponentialForm : Prop
  minimalSufficiency : Prop

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationTheorem ∧ S.exponentialForm ∧ S.minimalSufficiency

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse