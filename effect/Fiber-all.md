## all

Collects all fibers into a single fiber producing an in-order list of the
results.

**Signature**

```ts
declare const all: <A, E>(fibers: Iterable<Fiber<A, E>>) => Fiber<ReadonlyArray<A>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L378)

Since v2.0.0