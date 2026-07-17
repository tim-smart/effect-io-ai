Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromQueue

Creates a sink that offers every consumed input element to a queue.

**Details**

When the upstream stream ends, the sink ends the queue and completes with
`void`.

**Signature**

```ts
declare const fromQueue: <A>(queue: Queue.Queue<A, Cause.Done>) => Sink<void, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L464)

Since v2.0.0