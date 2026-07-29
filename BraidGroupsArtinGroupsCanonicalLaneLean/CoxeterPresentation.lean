import BraidGroupsArtinGroupsCanonicalLaneLean.AdmissibleClass

/-!
# Coxeter Presentation Package
-/

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure CoxeterMatrix where
  size : Nat
  entries : Nat → Nat → Nat
  symmetric : ∀ i j, entries i j = entries j i
  diagonalOne : ∀ i, entries i i = 1
  offDiagonalAtLeastTwo : ∀ i j, i ≠ j → entries i j ≥ 2

structure CoxeterPresentationPackage (M : CoxeterMatrix) where
  generators : Type u
  relations : Type v
  coxeterGroup : Type w
  groupIsFinite : Prop
  groupGeneratedByReflections : Prop
  relationSetComplete : Prop

def CoxeterPresentationClosed {M : CoxeterMatrix} (P : CoxeterPresentationPackage M) : Prop :=
  P.groupIsFinite ∧ P.groupGeneratedByReflections ∧ P.relationSetComplete

structure CoxeterPresentationEvidence {M : CoxeterMatrix} (P : CoxeterPresentationPackage M) where
  groupIsFiniteClosed : P.groupIsFinite
  groupGeneratedByReflectionsClosed : P.groupGeneratedByReflections
  relationSetCompleteClosed : P.relationSetComplete

theorem coxeter_presentation_closed_from_evidence
    {M : CoxeterMatrix} (P : CoxeterPresentationPackage M)
    (E : CoxeterPresentationEvidence P) : CoxeterPresentationClosed P := by
  exact And.intro E.groupIsFiniteClosed
    (And.intro E.groupGeneratedByReflectionsClosed E.relationSetCompleteClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse