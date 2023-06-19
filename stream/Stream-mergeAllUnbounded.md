# mergeAllUnbounded

Like `Stream.mergeAll`, but runs all streams concurrently.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mergeAllUnbounded: (
  bufferSize?: number
) => <R, E, A>(...streams: Stream<R, E, A>[]) => Stream<R, E, A>
```
