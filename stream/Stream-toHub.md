# toHub

Converts the stream to a scoped hub of chunks. After the scope is closed,
the hub will never again produce values and should be discarded.

To import and use `toHub` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toHub
```

**Signature**

```ts
export declare const toHub: {
  (capacity: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Hub.Hub<Take.Take<E, A>>>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Effect.Effect<Scope.Scope | R, never, Hub.Hub<Take.Take<E, A>>>
}
```
