import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  UrbanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse