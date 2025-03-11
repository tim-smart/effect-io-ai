## zipLeft

Same as `zip` but discards the output of that `Fiber`.

**Signature**

```ts
declare const zipLeft: { <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<A, E2 | E>; <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<A, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L717)

Since v2.0.0