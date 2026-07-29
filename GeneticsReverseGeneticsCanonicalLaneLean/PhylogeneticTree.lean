import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  treeTopology : Type v
  branchLengths : Type w
  molecularClock : Prop
  substitutionModel : Prop
  maximumLikelihoodEstimate : Prop
  bootstrapConfidence : Prop

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.molecularClock ∧ P.substitutionModel ∧ P.maximumLikelihoodEstimate ∧ P.bootstrapConfidence

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  molecularClockClosed : P.molecularClock
  substitutionModelClosed : P.substitutionModel
  maximumLikelihoodEstimateClosed : P.maximumLikelihoodEstimate
  bootstrapConfidenceClosed : P.bootstrapConfidence

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P :=
  by exact And.intro E.molecularClockClosed (And.intro E.substitutionModelClosed (And.intro E.maximumLikelihoodEstimateClosed E.bootstrapConfidenceClosed))

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
