# forever

Repeats this stream forever.

To import and use `forever` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.forever
```

**Signature**

```ts
export declare const forever: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```
