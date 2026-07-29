import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.SufficiencyAndExponentialFamily

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure NeymanPearsonPackage {E : ExponentialFamilyPackage} where
  testSize : Prop
  power : Prop
  mostPowerful : Prop
  mlConsistency : Prop
  neymanPearsonClosed : Prop
  mleConsistencyClosed : Prop

structure NeymanPearsonEvidence {E : ExponentialFamilyPackage} (N : NeymanPearsonPackage E) where
  neymanPearsonClosedClosed : N.neymanPearsonClosed
  mleConsistencyClosedClosed : N.mleConsistencyClosed

def NeymanPearsonClosed {E : ExponentialFamilyPackage} (N : NeymanPearsonPackage E) : Prop :=
  N.neymanPearsonClosed ∧ N.mleConsistencyClosed

theorem neyman_pearson_closed_from_evidence {E : ExponentialFamilyPackage}
    (N : NeymanPearsonPackage E) (ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro ev.neymanPearsonClosedClosed ev.mleConsistencyClosedClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
