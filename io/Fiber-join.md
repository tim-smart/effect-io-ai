# join

Joins the fiber, which suspends the joining fiber until the result of the
fiber has been determined. Attempting to join a fiber that has erred will
result in a catchable error. Joining an interrupted fiber will result in an
"inner interruption" of this fiber, unlike interruption triggered by
another fiber, "inner interruption" can be caught and recovered.

To import and use `join` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.join
```

**Signature**

```ts
export declare const join: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, E, A>
```
