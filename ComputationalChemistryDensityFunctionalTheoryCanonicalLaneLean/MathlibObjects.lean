import canonicalLaneMathlib.CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def Wavefunction := ℝ → ℂ
def Density := ℝ → ℝ
def ExternalPotential := ℝ → ℝ

structure DftClassicalObject where
  wavefunctionSet : Set Wavefunction
  potential : ExternalPotential
  groundStateEnergy : ℝ

structure DftAdmittedObject where
  classicalObject : DftClassicalObject
  projectedLanguage : Set Density
  solver : DecisionProcedure

structure DftEndgameState where
  admittedObject : DftAdmittedObject

def Decides (M : DecisionProcedure) (L : Set Density) : Prop :=
  forall x : Density, M.accepts x = true ↔ x ∈ L

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse