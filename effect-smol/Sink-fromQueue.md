Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromQueue

Creates a sink that offers every consumed input element to a queue.

When the upstream stream ends, the sink ends the queue and completes with
`void`.

**Signature**

```ts
declare const fromQueue: <A>(queue: Queue.Queue<A, Cause.Done>) => Sink<void, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L462)

Since v2.0.0