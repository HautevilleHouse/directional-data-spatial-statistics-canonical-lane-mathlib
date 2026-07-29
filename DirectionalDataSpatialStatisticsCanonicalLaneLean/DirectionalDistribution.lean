import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalDistributionPackage where
  directionSpace : Type u
  sphereTopology : TopologicalSpace directionSpace
  directionSpaceCompact : Prop
  distribution : Type v
  density : distribution → directionSpace → ℝ
  integralNormalization : Prop
  circularCase : directionSpace = (S¹ : Type u)

structure DirectionalDistributionEvidence (D : DirectionalDistributionPackage) where
  directionSpaceCompactClosed : D.directionSpaceCompact
  integralNormalizationClosed : D.integralNormalization

def DirectionalDistributionClosed (D : DirectionalDistributionPackage) : Prop :=
  D.directionSpaceCompact ∧ D.integralNormalization

theorem directional_distribution_closed_from_evidence
    (D : DirectionalDistributionPackage) (E : DirectionalDistributionEvidence D) :
    DirectionalDistributionClosed D := by
  exact And.intro E.directionSpaceCompactClosed E.integralNormalizationClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse