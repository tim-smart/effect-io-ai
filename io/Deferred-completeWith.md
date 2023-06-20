# completeWith

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

To import and use `completeWith` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.completeWith
```

**Signature**

```ts
export declare const completeWith: {
  <E, A>(effect: Effect.Effect<never, E, A>): (self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, effect: Effect.Effect<never, E, A>): Effect.Effect<never, never, boolean>
}
```
