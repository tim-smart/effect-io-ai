# poll

Returns a `Some<Effect<R, E, A>>` from the `Deferred` if this `Deferred` has
already been completed, `None` otherwise.

To import and use `poll` from the "Deferred" module:

```ts
import * as Deferred from 'effect/Deferred'

// Can be accessed like this
Deferred.poll
```

**Signature**

```ts
export declare const poll: <E, A>(
  self: Deferred<E, A>
) => Effect.Effect<never, never, Option.Option<Effect.Effect<never, E, A>>>
```
