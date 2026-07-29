import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinBraidRelations (n : ℕ) (B : BraidGroupPresentation n) where
  farCommutation : ∀ (i j : Fin (n-1)), (i.val + 1 < j.val) → (B.generators i * B.generators j = B.generators j * B.generators i)
  braidRelation : ∀ (i : Fin (n-2)), (B.generators (⟨i.val, by omega⟩ : Fin (n-1))) * B.generators (⟨i.val+1, by omega⟩ : Fin (n-1)) * (B.generators (⟨i.val, by omega⟩ : Fin (n-1))) = B.generators (⟨i.val+1, by omega⟩ : Fin (n-1)) * B.generators (⟨i.val, by omega⟩ : Fin (n-1)) * B.generators (⟨i.val+1, by omega⟩ : Fin (n-1))

def ArtinBraidRelationsClosed (n : ℕ) (B : BraidGroupPresentation n) (R : ArtinBraidRelations n B) : Prop :=
  R.farCommutation (0,0) ∧ R.braidRelation (0,0) -- placeholder, need to adjust

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse