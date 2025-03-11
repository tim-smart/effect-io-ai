## zipRight

Same as `zip` but discards the output of this `Fiber`.

**Signature**

```ts
declare const zipRight: { <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<A2, E2 | E>; <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<A2, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L728)

Since v2.0.0