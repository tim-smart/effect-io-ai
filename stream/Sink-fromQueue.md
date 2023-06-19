# fromQueue

Create a sink which enqueues each element into the specified queue.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromQueue: <In>(queue: Queue.Enqueue<In>) => Sink<never, never, In, never, void>
```
