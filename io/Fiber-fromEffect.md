# fromEffect

Lifts an `Effect` into a `Fiber`.

To import and use `fromEffect` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <E, A>(effect: Effect.Effect<never, E, A>) => Effect.Effect<never, never, Fiber<E, A>>
```
