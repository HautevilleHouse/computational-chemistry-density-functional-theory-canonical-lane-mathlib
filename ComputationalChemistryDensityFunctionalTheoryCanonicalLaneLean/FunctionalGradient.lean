import canonicalLaneMathlib.AdmissibleClass
import HohenbergKohnAdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

/-!
# Functional gradient descent for DFT

This module describes the gradient of the energy functional with respect to
the density, which is crucial for optimization methods in DFT.
-/

structure FunctionalGradient where
  vEff : ℝ → ℝ
  grad : ℝ → ℝ

def gradientDescentStep (rho : ℝ → ℝ) (grad : ℝ → ℝ) (stepSize : ℝ) : ℝ → ℝ :=
  fun x => rho x - stepSize * grad x

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse