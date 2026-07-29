import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BraidAdmittedObject where
  space : BraidSpace
  braidGroup : Prop
  artinPresentation : Prop
  pureBraidNormal : Prop
  conclusion : braidGroup ∧ artinPresentation ∧ pureBraidNormal

structure BraidEndgameState where
  object : BraidAdmittedObject

def BraidWitnessClosed (O : BraidAdmittedObject) : Prop :=
  O.braidGroup ∧ O.artinPresentation ∧ O.pureBraidNormal

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse
