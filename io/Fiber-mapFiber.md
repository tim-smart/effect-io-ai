# mapFiber

Passes the success of this fiber to the specified callback, and continues
with the fiber that it returns.

To import and use `mapFiber` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.mapFiber
```

**Signature**

```ts
export declare const mapFiber: {
  <E, E2, A, B>(f: (a: A) => Fiber<E2, B>): (self: Fiber<E, A>) => Effect.Effect<never, never, Fiber<E | E2, B>>
  <E, A, E2, B>(self: Fiber<E, A>, f: (a: A) => Fiber<E2, B>): Effect.Effect<never, never, Fiber<E | E2, B>>
}
```
