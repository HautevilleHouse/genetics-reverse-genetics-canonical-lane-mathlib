import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markers : Type u
  recombinationFraction : Type v
  lodScore : Prop
  linkageEvidence : Prop
  recombinationFractionComputed : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreClosed : L.lodScore
  linkageEvidenceClosed : L.linkageEvidence
  recombinationFractionComputedClosed : L.recombinationFractionComputed

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.lodScore ∧ L.linkageEvidence ∧ L.recombinationFractionComputed

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.lodScoreClosed
    (And.intro E.linkageEvidenceClosed E.recombinationFractionComputedClosed)

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse