# succeed

Completes the `Deferred` with the specified value.

To import and use `succeed` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.succeed
```

**Signature**

```ts
export declare const succeed: {
  <A>(value: A): <E>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, value: A): Effect.Effect<never, never, boolean>
}
```
