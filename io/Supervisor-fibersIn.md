# fibersIn

Creates a new supervisor that tracks children in a set.

To import and use `fibersIn` from the "Supervisor" module:

```ts
import * as Supervisor from '@effect/io/Supervisor'

// Can be accessed like this
Supervisor.fibersIn
```

**Signature**

```ts
export declare const fibersIn: (
  ref: MutableRef.MutableRef<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>
) => Effect.Effect<never, never, Supervisor<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>>
```
