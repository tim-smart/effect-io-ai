# fromQueue

Creates a stream from a queue of values

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromQueue: <A>(queue: Queue.Dequeue<A>, maxChunkSize?: number) => Stream<never, never, A>
```
