# bufferUnbounded

Allows a faster producer to progress independently of a slower consumer by
buffering chunks into an unbounded queue.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const bufferUnbounded: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
```
