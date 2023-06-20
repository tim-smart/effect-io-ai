# runIntoHub

Publishes elements of this stream to a hub. Stream failure and ending will
also be signalled.

To import and use `runIntoHub` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.runIntoHub
```

**Signature**

```ts
export declare const runIntoHub: {
  <E, A>(hub: Hub.Hub<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<R, never, void>
  <R, E, A>(self: Stream<R, E, A>, hub: Hub.Hub<Take.Take<E, A>>): Effect.Effect<R, never, void>
}
```
