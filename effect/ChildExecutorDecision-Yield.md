# Yield

Pass execution to the next substream. This either pulls a new element
from upstream, or yields to an already created active substream.

To import and use `Yield` from the "ChildExecutorDecision" module:

ts
import \* as ChildExecutorDecision from "effect/ChildExecutorDecision"
// Can be accessed like this
ChildExecutorDecision.Yield
undefined
