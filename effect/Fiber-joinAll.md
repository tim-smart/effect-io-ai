Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.joinAll

Joins all fibers, awaiting their _successful_ completion. Attempting to
join a fiber that has erred will result in a catchable error, _if_ that
error does not result from interruption.

**Signature**

```ts
declare const joinAll: <A, E>(fibers: Iterable<Fiber<A, E>>) => Effect.Effect<Array<A>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L537)

Since v2.0.0