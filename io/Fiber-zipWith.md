# zipWith

Zips this fiber with the specified fiber, combining their results using the
specified combiner function. Both joins and interruptions are performed in
sequential order from left to right.

To import and use `zipWith` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <E2, A, B, C>(that: Fiber<E2, B>, f: (a: A, b: B) => C): <E>(self: Fiber<E, A>) => Fiber<E2 | E, C>
  <E, A, E2, B, C>(self: Fiber<E, A>, that: Fiber<E2, B>, f: (a: A, b: B) => C): Fiber<E | E2, C>
}
```
