# fromAcquire

Creates a new `ScopedRef` from an effect that resourcefully produces a
value.

To import and use `fromAcquire` from the "ScopedRef" module:

```ts
import * as ScopedRef from 'effect/ScopedRef'

// Can be accessed like this
ScopedRef.fromAcquire
```

**Signature**

```ts
export declare const fromAcquire: <R, E, A>(
  acquire: Effect.Effect<R, E, A>
) => Effect.Effect<Scope.Scope | R, E, ScopedRef<A>>
```
