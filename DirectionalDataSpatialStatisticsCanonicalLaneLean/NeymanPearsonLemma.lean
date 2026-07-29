import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure NeymanPearsonHypothesis where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  likelihoodRatio : Prop
  criticalRegion : Type u
  sizeConstraint : Prop
  powerMaximized : Prop
  lemmaClosed : Prop

def NeymanPearsonLemmaClosed (N : NeymanPearsonHypothesis) : Prop :=
  N.nullHypothesis ∧ N.alternativeHypothesis ∧ N.likelihoodRatio ∧ N.sizeConstraint ∧ N.powerMaximized ∧ N.lemmaClosed

structure NeymanPearsonLemmaEvidence (N : NeymanPearsonHypothesis) where
  nullHypothesisClosed : N.nullHypothesis
  alternativeHypothesisClosed : N.alternativeHypothesis
  likelihoodRatioClosed : N.likelihoodRatio
  sizeConstraintClosed : N.sizeConstraint
  powerMaximizedClosed : N.powerMaximized
  lemmaClosedClosed : N.lemmaClosed

theorem neyman_pearson_lemma_closed_from_evidence
    (N : NeymanPearsonHypothesis) (E : NeymanPearsonLemmaEvidence N) :
    NeymanPearsonLemmaClosed N := by
  exact And.intro E.nullHypothesisClosed
    (And.intro E.alternativeHypothesisClosed
      (And.intro E.likelihoodRatioClosed
        (And.intro E.sizeConstraintClosed
          (And.intro E.powerMaximizedClosed E.lemmaClosedClosed))))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse