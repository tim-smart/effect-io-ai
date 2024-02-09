# range

Constructs a stream from a range of integers, including both endpoints.

To import and use `range` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.range
```

**Signature**

```ts
export declare const range: (min: number, max: number, chunkSize?: number) => Stream<number>
```
