# interruptAllAs

Interrupts all fibers as by the specified fiber, awaiting their
interruption.

To import and use `interruptAllAs` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.interruptAllAs
```

**Signature**

```ts
export declare const interruptAllAs: {
  (fiberId: FiberId.FiberId): (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<void>
  (fibers: Iterable<Fiber<any, any>>, fiberId: FiberId.FiberId): Effect.Effect<void>
}
```
