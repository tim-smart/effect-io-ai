# sync

Completes the `Deferred` with the specified lazily evaluated value.

To import and use `sync` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.sync
```

**Signature**

```ts
export declare const sync: {
  <A>(evaluate: LazyArg<A>): <E>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, evaluate: LazyArg<A>): Effect.Effect<never, never, boolean>
}
```
