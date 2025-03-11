## Emit

An `Emit<R, E, A, B>` represents an asynchronous callback that can be
called multiple times. The callback can be called with a value of type
`Effect<Chunk<A>, Option<E>, R>`, where succeeding with a `Chunk<A>`
indicates to emit those elements, failing with `Some<E>` indicates to
terminate with that error, and failing with `None` indicates to terminate
with an end of stream signal.

**Signature**

```ts
export interface Emit<in R, in E, in A, out B> extends EmitOps<R, E, A, B> {
  (f: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>): Promise<B>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/StreamEmit.ts#L21)

Since v2.0.0