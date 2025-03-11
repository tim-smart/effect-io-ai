## zip

Zips this fiber and the specified fiber together, producing a tuple of
their output.

**Signature**

```ts
declare const zip: { <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<[A, A2], E2 | E>; <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<[A, A2], E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L706)

Since v2.0.0