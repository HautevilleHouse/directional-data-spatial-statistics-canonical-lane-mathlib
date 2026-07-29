import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SphericalDataObject where
  dataSpace : Type u
  topology : TopologicalSpace dataSpace
  directionSpace : Type v
  sphereTopology : TopologicalSpace directionSpace
  sampleSize : Nat
  observations : dataSpace → directionSpace
  conclusion : Prop

structure AdmissibleClass where
  object : SphericalDataObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SphericalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SphericalWitnessClosed (O : SphericalDataObject) : Prop :=
  O.conclusion

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
