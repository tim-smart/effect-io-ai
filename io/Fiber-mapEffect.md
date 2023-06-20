# mapEffect

Effectually maps over the value the fiber computes.

To import and use `mapEffect` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <A, E2, A2>(f: (a: A) => Effect.Effect<never, E2, A2>): <E>(self: Fiber<E, A>) => Fiber<E2 | E, A2>
  <E, A, E2, A2>(self: Fiber<E, A>, f: (a: A) => Effect.Effect<never, E2, A2>): Fiber<E | E2, A2>
}
```
