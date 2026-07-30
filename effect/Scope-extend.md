Package: `effect`<br />
Module: `Scope`<br />

## Scope.extend

Extends the scope of an `Effect` that requires a scope into this scope.
It provides this scope to the effect but does not close the scope when the
effect completes execution. This allows extending a scoped value into a
larger scope.

**Signature**

```ts
declare const extend: { (scope: Scope): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope>>; <A, E, R>(effect: Effect.Effect<A, E, R>, scope: Scope): Effect.Effect<A, E, Exclude<R, Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L163)

Since v2.0.0