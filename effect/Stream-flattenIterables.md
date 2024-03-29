# flattenIterables

Submerges the iterables carried by this stream into the stream's structure,
while still preserving them.

To import and use `flattenIterables` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flattenIterables
```

**Signature**

```ts
export declare const flattenIterables: <A, E, R>(self: Stream<Iterable<A>, E, R>) => Stream<A, E, R>
```
