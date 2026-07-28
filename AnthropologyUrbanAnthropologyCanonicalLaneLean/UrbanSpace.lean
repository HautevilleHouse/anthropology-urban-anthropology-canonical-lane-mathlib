import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure UrbanSpacePackage where
  city : Type u
  topology : TopologicalSpace city
  spatialStructure : Prop
  zoningMap : Prop
  infrastructureNetwork : Prop
  publicSpaceAccessibility : Prop

structure UrbanSpaceEvidence (U : UrbanSpacePackage) where
  spatialStructureClosed : U.spatialStructure
  zoningMapClosed : U.zoningMap
  infrastructureNetworkClosed : U.infrastructureNetwork
  publicSpaceAccessibilityClosed : U.publicSpaceAccessibility

def UrbanSpaceClosed (U : UrbanSpacePackage) : Prop :=
  U.spatialStructure ∧ U.zoningMap ∧ U.infrastructureNetwork ∧ U.publicSpaceAccessibility

theorem urban_space_closed_from_evidence (U : UrbanSpacePackage) (E : UrbanSpaceEvidence U) :
    UrbanSpaceClosed U := by
  exact And.intro E.spatialStructureClosed (And.intro E.zoningMapClosed (And.intro E.infrastructureNetworkClosed E.publicSpaceAccessibilityClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse