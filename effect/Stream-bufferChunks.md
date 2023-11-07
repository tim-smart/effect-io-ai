# bufferChunks

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` chunks in a queue.

To import and use `bufferChunks` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.bufferChunks
```

**Signature**

```ts
export declare const bufferChunks: {
  (options: { readonly capacity: number; readonly strategy?: 'dropping' | 'sliding' | 'suspend' }): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    options: { readonly capacity: number; readonly strategy?: 'dropping' | 'sliding' | 'suspend' }
  ): Stream<R, E, A>
}
```
