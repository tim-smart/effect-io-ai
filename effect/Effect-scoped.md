# scoped

Scopes all resources used in an effect to the lifetime of the effect.

**Details**

This function ensures that all resources used within an effect are tied to
its lifetime. Finalizers for these resources are executed automatically when
the effect completes, whether through success, failure, or interruption. This
guarantees proper resource cleanup without requiring explicit management.

To import and use `scoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scoped
```

**Signature**

```ts
export declare const scoped: <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, Exclude<R, Scope.Scope>>
```
