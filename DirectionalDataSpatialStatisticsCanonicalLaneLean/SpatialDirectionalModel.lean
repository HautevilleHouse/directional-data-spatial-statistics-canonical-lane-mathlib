import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalDataPackage where
  sphereManifold : Type u
  sphereTopology : TopologicalSpace sphereManifold
  dataPoints : sphereManifold -> Prop
  observationCount : Nat
  directionalMean : sphereManifold
  concentrationParameter : ℝ
  dataGeneratingProcess : Prop

def DirectionalDataClosed (D : DirectionalDataPackage) : Prop :=
  D.dataGeneratingProcess

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse