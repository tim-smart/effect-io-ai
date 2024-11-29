# FiberRefsPatch

A `FiberRefsPatch` captures the changes in `FiberRef` values made by a single
fiber as a value. This allows fibers to apply the changes made by a workflow
without inheriting all the `FiberRef` values of the fiber that executed the
workflow.

To import and use `FiberRefsPatch` from the "FiberRefsPatch" module:

ts
import \* as FiberRefsPatch from "effect/FiberRefsPatch"
// Can be accessed like this
FiberRefsPatch.FiberRefsPatch
undefined
