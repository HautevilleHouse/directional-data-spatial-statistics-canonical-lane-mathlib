import DirectionalDataSpatialStatisticsCanonicalLaneLean.Sufficiency

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsCanonicalLaneLean

structure NeymanPearsonPackage {E : ExponentialFamilyPackage} where
  hypothesisPair : Prop
  likelihoodRatioTest : Prop
  mostPowerfulTest : Prop
  lemmaStatement : Prop

structure NeymanPearsonEvidence {E : ExponentialFamilyPackage}
    (N : NeymanPearsonPackage E) where
  hypothesisPairClosed : N.hypothesisPair
  likelihoodRatioTestClosed : N.likelihoodRatioTest
  mostPowerfulTestClosed : N.mostPowerfulTest
  lemmaStatementClosed : N.lemmaStatement

def NeymanPearsonClosed {E : ExponentialFamilyPackage}
    (N : NeymanPearsonPackage E) : Prop :=
  N.hypothesisPair ∧ N.likelihoodRatioTest ∧ N.mostPowerfulTest ∧ N.lemmaStatement

theorem neyman_pearson_closed_from_evidence {E : ExponentialFamilyPackage}
    (N : NeymanPearsonPackage E) (ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro ev.hypothesisPairClosed
    (And.intro ev.likelihoodRatioTestClosed
      (And.intro ev.mostPowerfulTestClosed ev.lemmaStatementClosed))

end DirectionalDataSpatialStatisticsCanonicalLaneLean
end HautevilleHouse
