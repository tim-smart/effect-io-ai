# asyncOption

Creates a stream from an asynchronous callback that can be called multiple
times. The registration of the callback can possibly return the stream
synchronously. The optionality of the error type `E` can be used to signal
the end of the stream, by setting it to `None`.

To import and use `asyncOption` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.asyncOption
```

**Signature**

```ts
export declare const asyncOption: <R, E, A>(
  register: (emit: Emit.Emit<R, E, A, void>) => Option.Option<Stream<R, E, A>>,
  outputBuffer?: number
) => Stream<R, E, A>
```
