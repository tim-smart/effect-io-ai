# toQueue

Converts the stream to a scoped queue of chunks. After the scope is closed,
the queue will never again produce values and should be discarded.

Defaults to the "suspend" back pressure strategy with a capacity of 2.

To import and use `toQueue` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.toQueue
```

**Signature**

```ts
export declare const toQueue: {
  (
    options?:
      | { readonly strategy?: 'dropping' | 'sliding' | 'suspend'; readonly capacity?: number }
      | { readonly strategy: 'unbounded' }
  ): <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
  <R, E, A>(
    self: Stream<R, E, A>,
    options?:
      | { readonly strategy?: 'dropping' | 'sliding' | 'suspend'; readonly capacity?: number }
      | { readonly strategy: 'unbounded' }
  ): Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
}
```
