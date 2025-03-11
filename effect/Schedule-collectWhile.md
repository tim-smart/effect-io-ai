## collectWhile

Collects all inputs into a `Chunk` while a condition holds.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` while the given predicate function `f` evaluates to `true`. As soon
as the condition fails, the schedule stops.

**Signature**

```ts
declare const collectWhile: <A>(f: Predicate<A>) => Schedule<Chunk.Chunk<A>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L488)

Since v2.0.0