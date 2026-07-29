import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure DirectionalDistributionFamily where
  sampleSpace : Type u
  baseMeasure : Type v
  directionKernel : Type w
  concentrationParameter : Prop
  shapeFamily : Prop
  normalizingConstant : Prop
  sufficiencyCondition : Prop

def DirectionalDistributionFamilyClosed (D : DirectionalDistributionFamily) : Prop :=
  D.concentrationParameter ∧ D.shapeFamily ∧ D.normalizingConstant ∧ D.sufficiencyCondition

structure DirectionalDistributionFamilyEvidence (D : DirectionalDistributionFamily) where
  concentrationParameterClosed : D.concentrationParameter
  shapeFamilyClosed : D.shapeFamily
  normalizingConstantClosed : D.normalizingConstant
  sufficiencyConditionClosed : D.sufficiencyCondition

theorem directional_distribution_family_closed_from_evidence
    (D : DirectionalDistributionFamily) (E : DirectionalDistributionFamilyEvidence D) :
    DirectionalDistributionFamilyClosed D := by
  exact And.intro E.concentrationParameterClosed
    (And.intro E.shapeFamilyClosed
      (And.intro E.normalizingConstantClosed E.sufficiencyConditionClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse