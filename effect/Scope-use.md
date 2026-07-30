Package: `effect`<br />
Module: `Scope`<br />

## Scope.use

Provides this closeable scope to an `Effect` that requires a scope,
guaranteeing that the scope is closed with the result of that effect as
soon as the effect completes execution, whether by success, failure, or
interruption.

**Signature**

```ts
declare const use: { (scope: CloseableScope): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope>>; <A, E, R>(effect: Effect.Effect<A, E, R>, scope: CloseableScope): Effect.Effect<A, E, Exclude<R, Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L189)

Since v2.0.0