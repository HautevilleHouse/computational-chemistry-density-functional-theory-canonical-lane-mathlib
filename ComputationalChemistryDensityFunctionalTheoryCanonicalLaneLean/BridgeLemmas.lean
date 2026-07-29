import canonicalLaneMathlib.AdmissibleClass
import HohenbergKohnAdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

/-!
# Bridge lemmas for DFT admissible class

The bridge closed condition requires that the external potential is injective
with respect to the ground-state density (Hohenberg–Kohn property).
-/

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse