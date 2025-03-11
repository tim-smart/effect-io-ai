## zipWith

Zips this fiber with the specified fiber, combining their results using the
specified combiner function. Both joins and interruptions are performed in
sequential order from left to right.

**Signature**

```ts
declare const zipWith: { <B, E2, A, C>(that: Fiber<B, E2>, f: (a: A, b: B) => C): <E>(self: Fiber<A, E>) => Fiber<C, E2 | E>; <A, E, B, E2, C>(self: Fiber<A, E>, that: Fiber<B, E2>, f: (a: A, b: B) => C): Fiber<C, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L741)

Since v2.0.0