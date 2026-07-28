import AnthropologyUrbanAnthropologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

def ConstrainedUrbanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_urban_endgame (A : AdmissibleClass) :
    ConstrainedUrbanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse