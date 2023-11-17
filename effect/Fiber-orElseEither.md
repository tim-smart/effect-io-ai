# orElseEither

Returns a fiber that prefers `this` fiber, but falls back to the `that` one
when `this` one fails. Interrupting the returned fiber will interrupt both
fibers, sequentially, from left to right.

To import and use `orElseEither` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <E2, A2>(that: Fiber<E2, A2>): <E, A>(self: Fiber<E, A>) => Fiber<E2 | E, Either.Either<A, A2>>
  <E, A, E2, A2>(self: Fiber<E, A>, that: Fiber<E2, A2>): Fiber<E | E2, Either.Either<A, A2>>
}
```
