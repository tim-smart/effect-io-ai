## Take

A `Take<A, E>` represents a single `take` from a queue modeling a stream of
values. A `Take` may be a failure cause `Cause<E>`, a chunk value `Chunk<A>`,
or an end-of-stream marker.

**Signature**

```ts
export interface Take<out A, out E = never> extends Take.Variance<A, E>, Pipeable {
  /** @internal */
  readonly exit: Exit.Exit<Chunk.Chunk<A>, Option.Option<E>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L33)

Since v2.0.0