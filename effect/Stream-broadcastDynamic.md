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
  (maximumLag: number): <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<Scope.Scope | R, never, Stream<never, E, A>>
  <R, E, A>(self: Stream<R, E, A>, maximumLag: number): Effect.Effect<Scope.Scope | R, never, Stream<never, E, A>>
}
```
