import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dftProjection : Projection DftEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dft_projection_idempotent (x : DftEndgameState) :
    dftProjection.toFun (dftProjection.toFun x) = dftProjection.toFun x := by
  exact dftProjection.idempotent x

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse