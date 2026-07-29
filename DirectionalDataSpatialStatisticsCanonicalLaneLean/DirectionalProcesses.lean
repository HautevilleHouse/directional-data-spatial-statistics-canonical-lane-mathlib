import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.NeymanPearsonAndMLE

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalProcessPackage where
  processType : Type u
  stationarity : Prop
  isotropy : Prop
  spectralRepresentation : Prop
  estimationConsistency : Prop

structure DirectionalProcessEvidence (D : DirectionalProcessPackage) where
  stationarityClosed : D.stationarity
  isotropyClosed : D.isotropy
  spectralRepresentationClosed : D.spectralRepresentation
  estimationConsistencyClosed : D.estimationConsistency

def DirectionalProcessClosed (D : DirectionalProcessPackage) : Prop :=
  D.stationarity ∧ D.isotropy ∧ D.spectralRepresentation ∧ D.estimationConsistency

theorem directional_process_closed_from_evidence (D : DirectionalProcessPackage)
    (ev : DirectionalProcessEvidence D) : DirectionalProcessClosed D := by
  exact And.intro ev.stationarityClosed (And.intro ev.isotropyClosed
    (And.intro ev.spectralRepresentationClosed ev.estimationConsistencyClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
