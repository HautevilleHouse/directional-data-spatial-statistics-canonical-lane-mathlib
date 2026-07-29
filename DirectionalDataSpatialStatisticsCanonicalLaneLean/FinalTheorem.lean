import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

def ConstrainedDirectionalSpatialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_directional_spatial_endgame (A : AdmissibleClass) :
    ConstrainedDirectionalSpatialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse