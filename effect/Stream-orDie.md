# orDie

Translates any failure into a stream termination, making the stream
infallible and all failures unchecked.

To import and use `orDie` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.orDie
```

**Signature**

```ts
export declare const orDie: <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```
