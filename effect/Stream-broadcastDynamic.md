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
  (maximumLag: number): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E, never>, never, Scope.Scope | R>
  <A, E, R>(self: Stream<A, E, R>, maximumLag: number): Effect.Effect<Stream<A, E, never>, never, Scope.Scope | R>
}
```
