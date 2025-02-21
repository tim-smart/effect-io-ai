# fromFiberEffect

Creates an `Effect` value that represents the exit value of a fiber obtained
from an effect.

To import and use `fromFiberEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fromFiberEffect
```

**Signature**

```ts
export declare const fromFiberEffect: <A, E, R>(fiber: Effect<Fiber.Fiber<A, E>, E, R>) => Effect<A, E, R>
```
