## fromChunkQueue

Creates a stream from a `Queue` of values.

**Options**

- `shutdown`: If `true`, the queue will be shutdown after the stream is evaluated (defaults to `false`)

**Signature**

```ts
declare const fromChunkQueue: <A>(queue: Queue.Dequeue<Chunk.Chunk<A>>, options?: { readonly shutdown?: boolean | undefined; }) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1975)

Since v2.0.0