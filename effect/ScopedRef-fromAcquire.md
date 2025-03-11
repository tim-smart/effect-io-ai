## fromAcquire

Creates a new `ScopedRef` from an effect that resourcefully produces a
value.

**Signature**

```ts
declare const fromAcquire: <A, E, R>(acquire: Effect.Effect<A, E, R>) => Effect.Effect<ScopedRef<A>, E, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedRef.ts#L82)

Since v2.0.0