Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.joinAll

Waits for all fibers to succeed and returns their values in input order.

**When to use**

Use when you need every fiber to succeed and want the successful values
rather than the `Exit` values.

**Details**

If any fiber fails, the returned `Effect` fails with that fiber's cause and
stops waiting for additional results. This does not interrupt the remaining
fibers.

**Gotchas**

A failure stops waiting, but it does not interrupt any other fibers. Use
`interruptAll` separately when remaining fibers should be stopped.

**See**

- `awaitAll` for collecting every fiber outcome as an Exit

**Signature**

```ts
declare const joinAll: <A extends Iterable<Fiber<any, any>>>(self: A) => Effect<Arr.ReadonlyArray.With<A, A extends Iterable<Fiber<infer _A, infer _E>> ? _A : never>, A extends Fiber<infer _A, infer _E> ? _E : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L298)

Since v2.0.0