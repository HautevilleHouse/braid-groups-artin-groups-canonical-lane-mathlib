import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinMonoid (n : ℕ) where
  generators : Fin n → Type
  relations : Prop
  monoidStructure : Type
  multiplication : monoidStructure → monoidStructure → monoidStructure
  identity : monoidStructure
  associativity : ∀ a b c : monoidStructure, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : monoidStructure, multiplication identity a = a
  identityRight : ∀ a : monoidStructure, multiplication a identity = a

def ArtinMonoidClosed (M : ArtinMonoid n) : Prop := M.associativity ∧ M.identityLeft ∧ M.identityRight

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse