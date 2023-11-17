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
  (fiberId: FiberId.FiberId): <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, Exit.Exit<E, A>>
  <E, A>(self: Fiber<E, A>, fiberId: FiberId.FiberId): Effect.Effect<never, never, Exit.Exit<E, A>>
}
```
