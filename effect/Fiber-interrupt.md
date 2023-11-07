# interrupt

Interrupts the fiber from whichever fiber is calling this method. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

To import and use `interrupt` from the "Fiber" module:

```ts
import * as Fiber from 'effect/Fiber'

// Can be accessed like this
Fiber.interrupt
```

**Signature**

```ts
export declare const interrupt: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, Exit.Exit<E, A>>
```
