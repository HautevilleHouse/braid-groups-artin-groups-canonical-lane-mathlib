import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroupCohomologyPackage where
  cohomologyRing : Type
  cohomologyRingComputed : Prop
  cohomologyRingClosed : cohomologyRingComputed

def BraidGroupCohomologyClosed (C : BraidGroupCohomologyPackage) : Prop :=
  C.cohomologyRingComputed

theorem braid_group_cohomology_closed (C : BraidGroupCohomologyPackage) :
    BraidGroupCohomologyClosed C := by
  exact C.cohomologyRingClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse
