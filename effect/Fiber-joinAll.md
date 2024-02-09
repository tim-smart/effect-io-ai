# joinAll

Joins all fibers, awaiting their _successful_ completion. Attempting to
join a fiber that has erred will result in a catchable error, _if_ that
error does not result from interruption.

To import and use `joinAll` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.joinAll
```

**Signature**

```ts
export declare const joinAll: <A, E>(fibers: Iterable<Fiber<A, E>>) => Effect.Effect<void, E, never>
```
