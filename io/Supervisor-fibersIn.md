# fibersIn

Creates a new supervisor that tracks children in a set.

Part of the `Supervisor` module, imported from `@effect/io/Supervisor`.

**Signature**

```ts
export declare const fibersIn: (
  ref: MutableRef.MutableRef<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>
) => Effect.Effect<never, never, Supervisor<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>>
```
