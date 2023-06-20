# done

Exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

To import and use `done` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.done
```

**Signature**

```ts
export declare const done: {
  <E, A>(exit: Exit.Exit<E, A>): (self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, exit: Exit.Exit<E, A>): Effect.Effect<never, never, boolean>
}
```
