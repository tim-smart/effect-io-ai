# mkString

Returns a combined string resulting from concatenating each of the values
from the stream.

To import and use `mkString` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mkString
```

**Signature**

```ts
export declare const mkString: <E, R>(self: Stream<string, E, R>) => Effect.Effect<string, E, R>
```
