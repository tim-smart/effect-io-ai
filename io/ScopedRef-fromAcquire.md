# fromAcquire

Creates a new `ScopedRef` from an effect that resourcefully produces a
value.

Part of the `ScopedRef` module, imported from `@effect/io/ScopedRef`.

**Signature**

```ts
export declare const fromAcquire: <R, E, A>(
  acquire: Effect.Effect<R, E, A>
) => Effect.Effect<Scope.Scope | R, E, ScopedRef<A>>
```
