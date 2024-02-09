# toQueue

Converts the stream to a scoped queue of chunks. After the scope is closed,
the queue will never again produce values and should be discarded.

Defaults to the "suspend" back pressure strategy with a capacity of 2.

To import and use `toQueue` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toQueue
```

**Signature**

```ts
export declare const toQueue: {
  (
    options?:
      | { readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly capacity?: number | undefined }
      | { readonly strategy: "unbounded" }
      | undefined
  ): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options?:
      | { readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly capacity?: number | undefined }
      | { readonly strategy: "unbounded" }
      | undefined
  ): Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope | R>
}
```
