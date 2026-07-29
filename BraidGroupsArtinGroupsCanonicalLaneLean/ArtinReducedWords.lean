import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinMonomial (n : ℕ) where
  generator : BraidGroupPresentation n
  exponent : ℤ

structure ReducedWord (n : ℕ) where
  monomials : List (ArtinMonomial n)
  isReduced : Prop
  braidWord : Prop

structure ReducedWordEvidence (n : ℕ) (R : ReducedWord n) where
  isReducedClosed : R.isReduced
  braidWordClosed : R.braidWord

def ReducedWordClosed (n : ℕ) (R : ReducedWord n) : Prop :=
  R.isReduced ∧ R.braidWord

theorem reduced_word_closed_from_evidence (n : ℕ)
    (R : ReducedWord n) (E : ReducedWordEvidence n R) :
    ReducedWordClosed n R := by
  exact And.intro E.isReducedClosed E.braidWordClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse