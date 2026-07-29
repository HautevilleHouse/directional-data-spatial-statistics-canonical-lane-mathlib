import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalDataAdmittedObject where
  dataSpace : Type
  topology : TopologicalSpace dataSpace
  directionFiber : Type
  fiberTopology : TopologicalSpace directionFiber
  directionalMeasure : Prop
  spatialDependence : Prop
  inferenceClosed : Prop
  conclusion : inferenceClosed

def DirectionalDataWitnessClosed (O : DirectionalDataAdmittedObject) : Prop :=
  O.inferenceClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse