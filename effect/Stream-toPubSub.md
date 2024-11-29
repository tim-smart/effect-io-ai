# toPubSub

Converts the stream to a scoped `PubSub` of chunks. After the scope is closed,
the `PubSub` will never again produce values and should be discarded.

To import and use `toPubSub` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.toPubSub
undefined

**Signature**

```ts
export declare const toPubSub: {
  (
    capacity:
      | number
      | { readonly capacity: "unbounded"; readonly replay?: number | undefined }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
        }
  ): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    capacity:
      | number
      | { readonly capacity: "unbounded"; readonly replay?: number | undefined }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
        }
  ): Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>
}
```
