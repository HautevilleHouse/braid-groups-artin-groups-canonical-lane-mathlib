import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroup (n : ℕ) where
  generators : Fin (n-1) → Type
  braidRelations : Prop

structure ArtinGroup (n : ℕ) where
  standardGenerators : Fin n → Type
  relationType : Prop

structure BraidAdmittedObject where
  braidGroup : BraidGroup 3
  artinGroup : ArtinGroup 3
  presentationSatisfied : Prop
  conclusion : presentationSatisfied

def BraidWitnessClosed (O : BraidAdmittedObject) : Prop :=
  O.presentationSatisfied

structure AdmissibleClass where
  object : BraidAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BraidWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse