import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SpatialStationarityPackage where
  secondOrderStationarity : Prop
  intrinsicStationarity : Prop
  variogramModel : Type u
  anisotropyCorrection : Prop
  bridgeClosed : Prop
  gateClosed : Prop

def SpatialStationarityClosed (S : SpatialStationarityPackage) : Prop :=
  S.bridgeClosed ∧ S.gateClosed

theorem spatial_stationarity_from_evidence (S : SpatialStationarityPackage)
    (E : S.bridgeClosed ∧ S.gateClosed) : SpatialStationarityClosed S := E

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse