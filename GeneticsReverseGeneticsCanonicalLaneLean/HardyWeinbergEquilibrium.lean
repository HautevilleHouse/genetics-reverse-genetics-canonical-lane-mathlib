import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  populationGenotypeFrequencies : Type u
  alleleFrequencies : Type v
  equilibriumCondition : Prop
  chiSquaredTest : Prop
  deviationFromEquilibrium : Prop

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.equilibriumCondition ∧ H.chiSquaredTest ∧ H.deviationFromEquilibrium

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  chiSquaredTestClosed : H.chiSquaredTest
  deviationFromEquilibriumClosed : H.deviationFromEquilibrium

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H :=
  by exact And.intro E.equilibriumConditionClosed (And.intro E.chiSquaredTestClosed E.deviationFromEquilibriumClosed)

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
