# interruptAs

Interrupts the fiber as if interrupted from the specified fiber. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

To import and use `interruptAs` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.interruptAs
```

**Signature**

```ts
export declare const interruptAs: {
  (fiberId: FiberId.FiberId): <A, E>(self: Fiber<A, E>) => Effect.Effect<Exit.Exit<A, E>, never, never>
  <A, E>(self: Fiber<A, E>, fiberId: FiberId.FiberId): Effect.Effect<Exit.Exit<A, E>, never, never>
}
```
