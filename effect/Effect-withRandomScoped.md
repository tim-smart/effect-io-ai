# withRandomScoped

Sets the implementation of the `Random` service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withRandomScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withRandomScoped
```

**Signature**

```ts
export declare const withRandomScoped: <A extends Random.Random>(value: A) => Effect<void, never, Scope.Scope>
```
