import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SphericalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
