/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- The Aesop.BuiltinRules.* imports are needed to ensure that the tactics from
-- these files are registered.
import Aesop.BuiltinRules.Assumption
import Aesop.BuiltinRules.ApplyHyps
import Aesop.BuiltinRules.Reflexivity
import Aesop.BuiltinRules.SplitHyps
import Aesop.Frontend

open Lean
open Lean.Elab
open Lean.Elab.Tactic

namespace Aesop.BuiltinRules

-- TODO avoid TacticM?
@[aesop norm -1 (tactic (uses_branch_state := false)) (rule_sets [builtin])]
def intros : TacticM Unit := do
  evalTactic (← `(tactic|intros))

end Aesop.BuiltinRules
