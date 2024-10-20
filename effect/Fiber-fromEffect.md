# fromEffect

Lifts an `Effect` into a `Fiber`.

To import and use `fromEffect` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <A, E>(effect: Effect.Effect<A, E>) => Effect.Effect<Fiber<A, E>>
```
