## fromPull

Creates effect from `Effect<Chunk<A>, Option<E>, R>` that does not fail, but
succeeds with the `Take<A, E>`. Errors from stream when pulling are converted
to `Take.failCause`, and the end-of-stream is converted to `Take.end`.

**Signature**

```ts
declare const fromPull: <A, E, R>(pull: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>) => Effect.Effect<Take<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L137)

Since v2.0.0