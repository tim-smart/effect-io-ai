Package: `effect`<br />
Module: `ScopedRef`<br />

## ScopedRef.fromAcquire

Creates a new `ScopedRef` from an effect that acquires the initial value.

**When to use**

Use when creating a `ScopedRef` whose initial value requires acquiring
resources that must be released.

**See**

- `make` for creating a `ScopedRef` from a value that does not require resource acquisition

**Signature**

```ts
declare const fromAcquire: <A, E, R>(acquire: Effect.Effect<A, E, R>) => Effect.Effect<ScopedRef<A>, E, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedRef.ts#L75)

Since v2.0.0