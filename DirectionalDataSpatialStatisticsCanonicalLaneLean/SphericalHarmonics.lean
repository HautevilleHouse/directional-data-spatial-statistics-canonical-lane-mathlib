import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.DirectionalDistribution

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure SphericalHarmonicsPackage {D : DirectionalDistributionPackage} where
  harmonicDegree : ℕ
  basis : V n → (D.directionSpace → ℝ)
  orthonormality : Prop
  completeness : Prop

structure SphericalHarmonicsEvidence {D : DirectionalDistributionPackage}
    (S : SphericalHarmonicsPackage D) where
  orthonormalityClosed : S.orthonormality
  completenessClosed : S.completeness

def SphericalHarmonicsClosed {D : DirectionalDistributionPackage}
    (S : SphericalHarmonicsPackage D) : Prop :=
  S.orthonormality ∧ S.completeness

theorem spherical_harmonics_closed_from_evidence
    {D : DirectionalDistributionPackage} (S : SphericalHarmonicsPackage D)
    (E : SphericalHarmonicsEvidence S) : SphericalHarmonicsClosed S := by
  exact And.intro E.orthonormalityClosed E.completenessClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse