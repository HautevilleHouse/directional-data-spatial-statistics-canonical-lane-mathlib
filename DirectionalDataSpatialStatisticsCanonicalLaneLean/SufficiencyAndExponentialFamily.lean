import HautevilleHouse.DirectionalDataSpatialStatisticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Type u
  baseMeasure : Type v
  logNormalizer : Prop
  expectationParameter : Prop
  mleExistence : Prop
  sufficiencyClosed : Prop
  exponentialFamilyClosed : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  sufficiencyClosedClosed : E.sufficiencyClosed
  exponentialFamilyClosedClosed : E.exponentialFamilyClosed

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.sufficiencyClosed ∧ E.exponentialFamilyClosed

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage)
    (ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro ev.sufficiencyClosedClosed ev.exponentialFamilyClosedClosed

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
