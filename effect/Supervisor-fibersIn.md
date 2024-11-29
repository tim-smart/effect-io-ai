# fibersIn

Creates a new supervisor that tracks children in a set.

To import and use `fibersIn` from the "Supervisor" module:

ts
import \* as Supervisor from "effect/Supervisor"
// Can be accessed like this
Supervisor.fibersIn
undefined

**Signature**

```ts
export declare const fibersIn: (
  ref: MutableRef.MutableRef<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>
) => Effect.Effect<Supervisor<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>>
```
