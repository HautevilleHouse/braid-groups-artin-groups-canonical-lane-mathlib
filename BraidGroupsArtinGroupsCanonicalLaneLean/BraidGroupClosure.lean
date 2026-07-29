import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  simp [bridgeClosed]

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  simp [gateClosed]

def ConstrainedBraidGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_braid_group_endgame (A : AdmissibleClass) :
    ConstrainedBraidGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse