import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure SocialNetworkPackage where
  networkSize : Prop
  centralityMeasures : Prop
  communityDetection : Prop
  tieStrength : Prop

structure SocialNetworkEvidence (N : SocialNetworkPackage) where
  networkSizeClosed : N.networkSize
  centralityMeasuresClosed : N.centralityMeasures
  communityDetectionClosed : N.communityDetection
  tieStrengthClosed : N.tieStrength

def SocialNetworkClosed (N : SocialNetworkPackage) : Prop :=
  N.networkSize ∧ N.centralityMeasures ∧ N.communityDetection ∧ N.tieStrength

theorem social_network_closed_from_evidence (N : SocialNetworkPackage) (E : SocialNetworkEvidence N) : SocialNetworkClosed N :=
  And.intro E.networkSizeClosed (And.intro E.centralityMeasuresClosed (And.intro E.communityDetectionClosed E.tieStrengthClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse