# succeed

Completes the `Deferred` with the specified value.

To import and use `succeed` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.succeed
undefined

**Signature**

```ts
export declare const succeed: {
  <A>(value: A): <E>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, value: A): Effect.Effect<boolean>
}
```
