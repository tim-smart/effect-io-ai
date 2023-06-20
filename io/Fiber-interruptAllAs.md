# interruptAllAs

Interrupts all fibers as by the specified fiber, awaiting their
interruption.

To import and use `interruptAllAs` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.interruptAllAs
```

**Signature**

```ts
export declare const interruptAllAs: {
  (fiberId: FiberId.FiberId): (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<never, never, void>
  (fibers: Iterable<Fiber<any, any>>, fiberId: FiberId.FiberId): Effect.Effect<never, never, void>
}
```
