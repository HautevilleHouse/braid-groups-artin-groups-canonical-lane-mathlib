import BraidGroupsArtinGroupsCanonicalLaneLean.BridgeLemmas
import BraidGroupsArtinGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

def BraidArtinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem braid_artin_endgame (A : AdmissibleClass) :
    BraidArtinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse