# extend

Extends the scope of an `Effect` that requires a scope into this scope.
It provides this scope to the effect but does not close the scope when the
effect completes execution. This allows extending a scoped value into a
larger scope.

To import and use `extend` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.extend
```

**Signature**

```ts
export declare const extend: {
  (scope: Scope): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope>>
  <A, E, R>(effect: Effect.Effect<A, E, R>, scope: Scope): Effect.Effect<A, E, Exclude<R, Scope>>
}
```
