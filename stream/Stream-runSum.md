# runSum

Runs the stream to a sink which sums elements, provided they are Numeric.

To import and use `runSum` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.runSum
```

**Signature**

```ts
export declare const runSum: <R, E>(self: Stream<R, E, number>) => Effect.Effect<R, E, number>
```
