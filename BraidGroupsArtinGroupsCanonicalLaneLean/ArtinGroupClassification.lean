import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinGroupClassificationPackage (P : BraidGroupPresentation n) where
  isFiniteType : Prop
  isCoxeter : Prop
  sphericalType : Prop
  classificationComplete : Prop

structure ArtinGroupClassificationEvidence {P : BraidGroupPresentation n} (C : ArtinGroupClassificationPackage P) where
  isFiniteTypeClosed : C.isFiniteType
  isCoxeterClosed : C.isCoxeter
  sphericalTypeClosed : C.sphericalType
  classificationCompleteClosed : C.classificationComplete

def ArtinGroupClassificationClosed {P : BraidGroupPresentation n} (C : ArtinGroupClassificationPackage P) : Prop :=
  C.isFiniteType ∧ C.isCoxeter ∧ C.sphericalType ∧ C.classificationComplete

theorem artin_group_classification_closed_from_evidence
    {P : BraidGroupPresentation n} (C : ArtinGroupClassificationPackage P) (E : ArtinGroupClassificationEvidence C) :
    ArtinGroupClassificationClosed C := by
  exact And.intro E.isFiniteTypeClosed
    (And.intro E.isCoxeterClosed
      (And.intro E.sphericalTypeClosed E.classificationCompleteClosed))

theorem artin_group_classification_supplies_mathlib_statement
    {P : BraidGroupPresentation n} (C : ArtinGroupClassificationPackage P) (h : ArtinGroupClassificationClosed C) :
    C.classificationComplete := h.right.right.right

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse