# fromFiber

Creates an `Effect` value that represents the exit value of the specified
fiber.

To import and use `fromFiber` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.fromFiber
```

**Signature**

```ts
export declare const fromFiber: <E, A>(fiber: Fiber.Fiber<E, A>) => Effect<never, E, A>
```
