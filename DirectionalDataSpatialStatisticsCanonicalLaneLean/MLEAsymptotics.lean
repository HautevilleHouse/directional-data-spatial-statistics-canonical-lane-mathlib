import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure MLEAsymptoticProperties where
  parameterSpace : Type u
  logLikelihood : Prop
  scoreFunction : Prop
  fisherInformationMatrix : Prop
  consistencyCondition : Prop
  asymptoticNormality : Prop
  efficiencyBound : Prop
  mleClosed : Prop

def MLEAsymptoticClosed (M : MLEAsymptoticProperties) : Prop :=
  M.logLikelihood ∧ M.scoreFunction ∧ M.fisherInformationMatrix ∧
  M.consistencyCondition ∧ M.asymptoticNormality ∧ M.efficiencyBound ∧ M.mleClosed

structure MLEAsymptoticEvidence (M : MLEAsymptoticProperties) where
  logLikelihoodClosed : M.logLikelihood
  scoreFunctionClosed : M.scoreFunction
  fisherInformationMatrixClosed : M.fisherInformationMatrix
  consistencyConditionClosed : M.consistencyCondition
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyBoundClosed : M.efficiencyBound
  mleClosedClosed : M.mleClosed

theorem mle_asymptotic_closed_from_evidence
    (M : MLEAsymptoticProperties) (E : MLEAsymptoticEvidence M) :
    MLEAsymptoticClosed M := by
  exact And.intro E.logLikelihoodClosed
    (And.intro E.scoreFunctionClosed
      (And.intro E.fisherInformationMatrixClosed
        (And.intro E.consistencyConditionClosed
          (And.intro E.asymptoticNormalityClosed
            (And.intro E.efficiencyBoundClosed E.mleClosedClosed)))))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse