Package: `effect`<br />
Module: `Stream`<br />

## Stream.runIntoQueue

Enqueues elements of this stream into a queue. Stream failure and ending
will also be signalled.

**Signature**

```ts
declare const runIntoQueue: { <A, E>(queue: Queue.Enqueue<Take.Take<A, E>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, R>; <A, E, R>(self: Stream<A, E, R>, queue: Queue.Enqueue<Take.Take<A, E>>): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4417)

Since v2.0.0