import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceSequence : Type u
  querySequence : Type v
  scoringMatrix : Type w
  alignmentScore : Prop
  gapPenalty : Prop
  optimalAlignment : Prop
  alignmentFromAdmissibleClass : AdmissibleClass -> Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixDefined : S.scoringMatrix
  alignmentScoreClosed : S.alignmentScore
  gapPenaltyClosed : S.gapPenalty
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.alignmentScore ∧ S.gapPenalty ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  by exact And.intro E.scoringMatrixDefined (And.intro E.alignmentScoreClosed (And.intro E.gapPenaltyClosed E.optimalAlignmentClosed))

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
