import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

def artinProjection : Projection ArtinEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem artin_projection_idempotent (x : ArtinEndgameState) :
    artinProjection.toFun (artinProjection.toFun x) = artinProjection.toFun x := by
  exact artinProjection.idempotent x

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse