import DirectionalDataSpatialStatisticsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  sufficientStatistic : sampleSpace → ℝᵐ
  logPartition : ℝᵐ → ℝ
  naturalParameterSpace : Set ℝᵐ
  canonicalForm : Prop
  regularity : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  regularityClosed : E.regularity

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.regularity

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage)
    (ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro ev.canonicalFormClosed ev.regularityClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
