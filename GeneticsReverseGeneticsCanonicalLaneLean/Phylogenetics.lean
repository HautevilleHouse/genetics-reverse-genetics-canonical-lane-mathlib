import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  sequenceData : Type v
  evolutionaryModel : Type w
  treeTopology : Prop
  branchLengths : Prop
  likelihood : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodClosed : P.likelihood

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.likelihood

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed E.likelihoodClosed)

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse