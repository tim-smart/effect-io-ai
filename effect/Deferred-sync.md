# sync

Completes the `Deferred` with the specified lazily evaluated value.

To import and use `sync` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.sync
undefined

**Signature**

```ts
export declare const sync: {
  <A>(evaluate: LazyArg<A>): <E>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, evaluate: LazyArg<A>): Effect.Effect<boolean>
}
```
