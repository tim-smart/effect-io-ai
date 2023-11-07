# fromFiberEffect

Creates an `Effect` value that represents the exit value of the specified
fiber.

To import and use `fromFiberEffect` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.fromFiberEffect
```

**Signature**

```ts
export declare const fromFiberEffect: <R, E, A>(fiber: Effect<R, E, Fiber.Fiber<E, A>>) => Effect<R, E, A>
```
