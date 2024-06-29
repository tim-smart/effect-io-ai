# zipWith

Zips this fiber with the specified fiber, combining their results using the
specified combiner function. Both joins and interruptions are performed in
sequential order from left to right.

To import and use `zipWith` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <B, E2, A, C>(that: Fiber<B, E2>, f: (a: A, b: B) => C): <E>(self: Fiber<A, E>) => Fiber<C, E2 | E>
  <A, E, B, E2, C>(self: Fiber<A, E>, that: Fiber<B, E2>, f: (a: A, b: B) => C): Fiber<C, E | E2>
}
```
