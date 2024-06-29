# use

Uses the scope by providing it to an `Effect` workflow that needs a scope,
guaranteeing that the scope is closed with the result of that workflow as
soon as the workflow completes execution, whether by success, failure, or
interruption.

To import and use `use` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.use
```

**Signature**

```ts
export declare const use: {
  (scope: CloseableScope): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope>>
  <A, E, R>(effect: Effect.Effect<A, E, R>, scope: CloseableScope): Effect.Effect<A, E, Exclude<R, Scope>>
}
```
