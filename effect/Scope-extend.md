# extend

Extends the scope of an `Effect` workflow that needs a scope into this
scope by providing it to the workflow but not closing the scope when the
workflow completes execution. This allows extending a scoped value into a
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
