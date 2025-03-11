## collectWhileEffect

Collects all inputs into a `Chunk` while an effectful condition holds.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` while the given effectful predicate `f` returns `true`. The predicate
returns an effect, meaning it can depend on external state, such as database
queries, API responses, or real-time user conditions.

As soon as the effectful condition returns `false`, the schedule stops. This
is useful for dynamically controlled data collection, where stopping depends
on an external or asynchronous factor.

**Signature**

```ts
declare const collectWhileEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<Chunk.Chunk<A>, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L507)

Since v2.0.0