Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectUntil

Collects all inputs into a `Chunk` until a condition fails.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` until the given predicate function `f` evaluates to `false`. Once the
condition fails, the schedule stops.

**Signature**

```ts
declare const collectUntil: <A>(f: Predicate<A>) => Schedule<Chunk.Chunk<A>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L457)

Since v2.0.0