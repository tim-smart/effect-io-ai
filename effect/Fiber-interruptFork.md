# interruptFork

Interrupts the fiber from whichever fiber is calling this method. The
interruption will happen in a separate daemon fiber, and the returned
effect will always resume immediately without waiting.

To import and use `interruptFork` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.interruptFork
undefined

**Signature**

```ts
export declare const interruptFork: <A, E>(self: Fiber<A, E>) => Effect.Effect<void>
```
