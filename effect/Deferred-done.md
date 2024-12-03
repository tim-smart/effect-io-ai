# done

Exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

To import and use `done` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.done
```

**Signature**

```ts
export declare const done: {
  <A, E>(exit: Exit.Exit<A, E>): (self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, exit: Exit.Exit<A, E>): Effect.Effect<boolean>
}
```
