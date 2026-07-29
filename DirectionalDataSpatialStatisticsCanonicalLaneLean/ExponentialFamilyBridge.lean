import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure ExponentialFamilyBridge where
  canonicalParameter : Type u
  sufficientStatistic : Type v
  logPartition : Prop
  expectationParameter : Type w
  fisherInformation : Prop
  minimalRepresentation : Prop
  bridgeClosed : Prop

def ExponentialFamilyBridgeClosed (E : ExponentialFamilyBridge) : Prop :=
  E.logPartition ∧ E.fisherInformation ∧ E.minimalRepresentation ∧ E.bridgeClosed

structure ExponentialFamilyBridgeEvidence (E : ExponentialFamilyBridge) where
  logPartitionClosed : E.logPartition
  fisherInformationClosed : E.fisherInformation
  minimalRepresentationClosed : E.minimalRepresentation
  bridgeClosedClosed : E.bridgeClosed

theorem exponential_family_bridge_closed_from_evidence
    (E : ExponentialFamilyBridge) (Ev : ExponentialFamilyBridgeEvidence E) :
    ExponentialFamilyBridgeClosed E := by
  exact And.intro Ev.logPartitionClosed
    (And.intro Ev.fisherInformationClosed
      (And.intro Ev.minimalRepresentationClosed Ev.bridgeClosedClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse