Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromQueue

Creates a stream from a queue of values

**Options**

- `maxChunkSize`: The maximum number of queued elements to put in one chunk in the stream
- `shutdown`: If `true`, the queue will be shutdown after the stream is evaluated (defaults to `false`)

**Signature**

```ts
declare const fromQueue: <A>(queue: Queue.Dequeue<A>, options?: { readonly maxChunkSize?: number | undefined; readonly shutdown?: boolean | undefined; }) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2147)

Since v2.0.0