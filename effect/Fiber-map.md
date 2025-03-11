## map

Maps over the value the Fiber computes.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E>(self: Fiber<A, E>) => Fiber<B, E>; <A, E, B>(self: Fiber<A, E>, f: (a: A) => B): Fiber<B, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L545)

Since v2.0.0