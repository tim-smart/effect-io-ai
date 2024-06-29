# intoDeferred

Returns an effect that will succeed or fail the specified `Deferred` based
upon the result of the effect. Also synchronizes interruption, so if the
provided effect is interrupted, the specified `Deferred` will be interrupted
as well.

To import and use `intoDeferred` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.intoDeferred
```

**Signature**

```ts
export declare const intoDeferred: {
  <A, E>(deferred: Deferred.Deferred<A, E>): <R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
  <A, E, R>(self: Effect<A, E, R>, deferred: Deferred.Deferred<A, E>): Effect<boolean, never, R>
}
```
