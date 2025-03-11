## scoped

Scopes all resources used in an effect to the lifetime of the effect.

**Details**

This function ensures that all resources used within an effect are tied to
its lifetime. Finalizers for these resources are executed automatically when
the effect completes, whether through success, failure, or interruption. This
guarantees proper resource cleanup without requiring explicit management.

**Signature**

```ts
declare const scoped: <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5898)

Since v2.0.0