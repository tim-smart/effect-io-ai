# broadcastedQueuesDynamic

Converts the stream to a scoped dynamic amount of queues. Every chunk will
be replicated to every queue with the slowest queue being allowed to buffer
`maximumLag` chunks before the driver is back pressured.

Queues can unsubscribe from upstream by shutting down.

To import and use `broadcastedQueuesDynamic` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.broadcastedQueuesDynamic
undefined

**Signature**

```ts
export declare const broadcastedQueuesDynamic: {
  (
    maximumLag:
      | number
      | { readonly capacity: "unbounded"; readonly replay?: number | undefined }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
        }
  ): <A, E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope>, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    maximumLag:
      | number
      | { readonly capacity: "unbounded"; readonly replay?: number | undefined }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
        }
  ): Effect.Effect<Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope>, never, Scope.Scope | R>
}
```
