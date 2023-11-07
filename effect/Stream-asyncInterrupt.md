# asyncInterrupt

Creates a stream from an asynchronous callback that can be called multiple
times. The registration of the callback returns either a canceler or
synchronously returns a stream. The optionality of the error type `E` can
be used to signal the end of the stream, by setting it to `None`.

To import and use `asyncInterrupt` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.asyncInterrupt
```

**Signature**

```ts
export declare const asyncInterrupt: <R, E, A>(
  register: (emit: Emit.Emit<R, E, A, void>) => Either.Either<Effect.Effect<R, never, unknown>, Stream<R, E, A>>,
  outputBuffer?: number
) => Stream<R, E, A>
```
