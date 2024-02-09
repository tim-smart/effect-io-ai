# fromIterable

Creates a new `Stream` from an iterable collection of values.

To import and use `fromIterable` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => Stream<A, never, never>
```
