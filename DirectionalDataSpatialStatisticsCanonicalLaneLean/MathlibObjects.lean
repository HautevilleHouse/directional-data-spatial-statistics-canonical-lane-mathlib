import DirectionalDataSpatialStatisticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalDataSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DirectionalDataAdmittedObject where
  space : DirectionalDataSpace
  exponentialFamily : Prop
  sufficiency : Prop
  neymanPearsonLemma : Prop
  mleConsistency : Prop
  conclusion : exponentialFamily ∧ sufficiency ∧ neymanPearsonLemma ∧ mleConsistency

def DirectionalDataWitnessClosed (O : DirectionalDataAdmittedObject) : Prop :=
  O.conclusion

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
