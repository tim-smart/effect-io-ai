# asyncScoped

Creates a stream from an asynchronous callback that can be called multiple
times. The registration of the callback itself returns an a scoped
resource. The optionality of the error type `E` can be used to signal the
end of the stream, by setting it to `None`.

To import and use `asyncScoped` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.asyncScoped
```

**Signature**

```ts
export declare const asyncScoped: <R, E, A>(
  register: (
    cb: (effect: Effect.Effect<R, Option.Option<E>, Chunk.Chunk<A>>) => void
  ) => Effect.Effect<Scope.Scope | R, E, unknown>,
  outputBuffer?: number
) => Stream<R, E, A>
```
