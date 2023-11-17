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
  (fiberId: FiberId.FiberId): <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, void>
  <E, A>(self: Fiber<E, A>, fiberId: FiberId.FiberId): Effect.Effect<never, never, void>
}
```
