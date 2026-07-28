import AnthropologyUrbanAnthropologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse