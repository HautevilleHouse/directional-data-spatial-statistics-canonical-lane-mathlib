import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure WatsonDistribution where
  axisParameter : Type u
  concentration : Prop
  densityFormula : Prop
  normalizingConstant : Prop
  inferenceClosed : Prop

def WatsonDistributionClosed (W : WatsonDistribution) : Prop :=
  W.concentration ∧ W.densityFormula ∧ W.normalizingConstant ∧ W.inferenceClosed

structure WatsonDistributionEvidence (W : WatsonDistribution) where
  concentrationClosed : W.concentration
  densityFormulaClosed : W.densityFormula
  normalizingConstantClosed : W.normalizingConstant
  inferenceClosedClosed : W.inferenceClosed

theorem watson_distribution_closed_from_evidence
    (W : WatsonDistribution) (E : WatsonDistributionEvidence W) :
    WatsonDistributionClosed W := by
  exact And.intro E.concentrationClosed
    (And.intro E.densityFormulaClosed
      (And.intro E.normalizingConstantClosed E.inferenceClosedClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse