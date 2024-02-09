# interruptAsFork

Interrupts the fiber as if interrupted from the specified fiber. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

To import and use `interruptAsFork` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.interruptAsFork
```

**Signature**

```ts
export declare const interruptAsFork: {
  (fiberId: FiberId.FiberId): <A, E>(self: Fiber<A, E>) => Effect.Effect<void>
  <A, E>(self: Fiber<A, E>, fiberId: FiberId.FiberId): Effect.Effect<void>
}
```
