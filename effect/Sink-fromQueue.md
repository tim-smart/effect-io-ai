Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromQueue

Create a sink which enqueues each element into the specified queue.

If the `shutdown` parameter is `true`, the queue will be shutdown after the
sink is evaluated (defaults to `false`).

**Signature**

```ts
declare const fromQueue: <In>(queue: Queue.Enqueue<In>, options?: { readonly shutdown?: boolean | undefined; }) => Sink<void, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1034)

Since v2.0.0