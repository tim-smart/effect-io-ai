# broadcastDynamic

Fan out the stream, producing a dynamic number of streams that have the
same elements as this stream. The driver stream will only ever advance the
`maximumLag` chunks before the slowest downstream stream.

To import and use `broadcastDynamic` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.broadcastDynamic
```

**Signature**

```ts
export declare const broadcastDynamic: {
  (
    maximumLag:
      | number
      | { readonly capacity: "unbounded"; readonly replay?: number | undefined }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
        }
  ): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, Scope.Scope | R>
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
  ): Effect.Effect<Stream<A, E>, never, Scope.Scope | R>
}
```
