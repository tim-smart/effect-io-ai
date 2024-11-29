# orElseEither

Returns a fiber that prefers `this` fiber, but falls back to the `that` one
when `this` one fails. Interrupting the returned fiber will interrupt both
fibers, sequentially, from left to right.

To import and use `orElseEither` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.orElseEither
undefined

**Signature**

```ts
export declare const orElseEither: {
  <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<Either.Either<A2, A>, E2 | E>
  <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<Either.Either<A2, A>, E | E2>
}
```
