# complete

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

To import and use `complete` from the "Deferred" module:

```ts
import * as Deferred from 'effect/Deferred'

// Can be accessed like this
Deferred.complete
```

**Signature**

```ts
export declare const complete: {
  <E, A>(effect: Effect.Effect<never, E, A>): (self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, effect: Effect.Effect<never, E, A>): Effect.Effect<never, never, boolean>
}
```
