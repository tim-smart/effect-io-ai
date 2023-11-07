# mkString

Returns a combined string resulting from concatenating each of the values
from the stream.

To import and use `mkString` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.mkString
```

**Signature**

```ts
export declare const mkString: <R, E>(self: Stream<R, E, string>) => Effect.Effect<R, E, string>
```
