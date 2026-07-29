import BraidGroupsArtinGroupsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BraidSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BraidAdmittedObject where
  space : BraidSpace
  braidGroupOnNStr : Prop
  positiveArtinMonoid : Prop
  solutionConjugacy : Prop
  conclusion : solutionConjugacy

def BraidWitnessClosed (O : BraidAdmittedObject) : Prop :=
  O.solutionConjugacy

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse