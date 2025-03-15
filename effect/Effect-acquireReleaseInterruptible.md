Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireReleaseInterruptible

Creates a scoped resource with an interruptible acquire action.

**Details**

This function is similar to `acquireRelease`, but it allows the
acquisition of the resource to be interrupted. The `acquire` effect, which
represents the process of obtaining the resource, can be interrupted if
necessary.

**Signature**

```ts
declare const acquireReleaseInterruptible: { <X, R2>(release: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>): <A, E, R>(acquire: Effect<A, E, R>) => Effect<A, E, Scope.Scope | R2 | R>; <A, E, R, X, R2>(acquire: Effect<A, E, R>, release: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>): Effect<A, E, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5446)

Since v2.0.0