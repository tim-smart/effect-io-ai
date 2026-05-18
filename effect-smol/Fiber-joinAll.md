Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.joinAll

Waits for all fibers to succeed and returns their values in input order.

If any fiber fails, the returned `Effect` fails with that fiber's cause and
stops waiting for additional results. This does not interrupt the remaining
fibers.

**Signature**

```ts
declare const joinAll: <A extends Iterable<Fiber<any, any>>>(self: A) => Effect<Arr.ReadonlyArray.With<A, A extends Iterable<Fiber<infer _A, infer _E>> ? _A : never>, A extends Fiber<infer _A, infer _E> ? _E : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L279)

Since v2.0.0