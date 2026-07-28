import AnthropologyUrbanAnthropologyCanonicalLaneLean.EconomicZoning

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure SocialNetworkPackage {U : UrbanSpacePackage} {D : DemographicFluxPackage U} {E : EconomicZoningPackage D} where
  communityStructure : Prop
  socialCapitalTypes : Prop
  mobilityPatterns : Prop
  segregationIndices : Prop

structure SocialNetworkEvidence {U : UrbanSpacePackage} {D : DemographicFluxPackage U} {E : EconomicZoningPackage D} (S : SocialNetworkPackage) where
  communityStructureClosed : S.communityStructure
  socialCapitalTypesClosed : S.socialCapitalTypes
  mobilityPatternsClosed : S.mobilityPatterns
  segregationIndicesClosed : S.segregationIndices

def SocialNetworkClosed {U : UrbanSpacePackage} {D : DemographicFluxPackage U} {E : EconomicZoningPackage D} (S : SocialNetworkPackage) : Prop :=
  S.communityStructure ∧ S.socialCapitalTypes ∧ S.mobilityPatterns ∧ S.segregationIndices

theorem social_network_closed_from_evidence {U : UrbanSpacePackage} {D : DemographicFluxPackage U} {E : EconomicZoningPackage D} (S : SocialNetworkPackage) (Ev : SocialNetworkEvidence S) :
    SocialNetworkClosed S := by
  exact And.intro Ev.communityStructureClosed (And.intro Ev.socialCapitalTypesClosed (And.intro Ev.mobilityPatternsClosed Ev.segregationIndicesClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse