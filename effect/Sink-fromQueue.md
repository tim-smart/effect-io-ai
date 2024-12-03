# fromQueue

Create a sink which enqueues each element into the specified queue.

To import and use `fromQueue` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fromQueue
```

**Signature**

```ts
export declare const fromQueue: <In>(
  queue: Queue.Enqueue<In>,
  options?: { readonly shutdown?: boolean | undefined }
) => Sink<void, In>
```
