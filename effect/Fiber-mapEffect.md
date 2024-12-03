# mapEffect

Effectually maps over the value the fiber computes.

To import and use `mapEffect` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <A, A2, E2>(f: (a: A) => Effect.Effect<A2, E2>): <E>(self: Fiber<A, E>) => Fiber<A2, E2 | E>
  <A, E, A2, E2>(self: Fiber<A, E>, f: (a: A) => Effect.Effect<A2, E2>): Fiber<A2, E | E2>
}
```
