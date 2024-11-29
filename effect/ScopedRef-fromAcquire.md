# fromAcquire

Creates a new `ScopedRef` from an effect that resourcefully produces a
value.

To import and use `fromAcquire` from the "ScopedRef" module:

ts
import \* as ScopedRef from "effect/ScopedRef"
// Can be accessed like this
ScopedRef.fromAcquire
undefined

**Signature**

```ts
export declare const fromAcquire: <A, E, R>(
  acquire: Effect.Effect<A, E, R>
) => Effect.Effect<ScopedRef<A>, E, Scope.Scope | R>
```
