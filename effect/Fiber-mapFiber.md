# mapFiber

Passes the success of this fiber to the specified callback, and continues
with the fiber that it returns.

To import and use `mapFiber` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.mapFiber
undefined

**Signature**

```ts
export declare const mapFiber: {
  <E, E2, A, B>(f: (a: A) => Fiber<B, E2>): (self: Fiber<A, E>) => Effect.Effect<Fiber<B, E | E2>>
  <A, E, E2, B>(self: Fiber<A, E>, f: (a: A) => Fiber<B, E2>): Effect.Effect<Fiber<B, E | E2>>
}
```
