# fromAsyncIterable

Creates a stream from an `AsyncIterable`.

To import and use `fromAsyncIterable` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromAsyncIterable
```

**Signature**

```ts
export declare const fromAsyncIterable: <A, E>(
  iterable: AsyncIterable<A>,
  onError: (e: unknown) => E
) => Stream<A, E, never>
```
