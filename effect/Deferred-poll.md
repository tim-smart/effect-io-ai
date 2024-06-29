# poll

Returns a `Some<Effect<A, E, R>>` from the `Deferred` if this `Deferred` has
already been completed, `None` otherwise.

To import and use `poll` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.poll
```

**Signature**

```ts
export declare const poll: <A, E>(
  self: Deferred<A, E>
) => Effect.Effect<Option.Option<Effect.Effect<A, E, never>>, never, never>
```
