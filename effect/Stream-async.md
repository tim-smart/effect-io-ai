# async

Creates a stream from an asynchronous callback that can be called multiple
times. The optionality of the error type `E` in `Emit` can be used to
signal the end of the stream by setting it to `None`.

The registration function can optionally return an `Effect`, which will be
executed if the `Fiber` executing this Effect is interrupted.

To import and use `async` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.async
```
