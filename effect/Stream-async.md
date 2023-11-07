# async

Creates a stream from an asynchronous callback that can be called multiple
times. The optionality of the error type `E` can be used to signal the end
of the stream, by setting it to `None`.

To import and use `async` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.async
```
