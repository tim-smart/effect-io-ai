# interruptAll

Interrupts all fibers, awaiting their interruption.

To import and use `interruptAll` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.interruptAll
```

**Signature**

```ts
export declare const interruptAll: (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<never, never, void>
```
