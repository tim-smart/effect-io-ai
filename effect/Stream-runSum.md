# runSum

Runs the stream to a sink which sums elements, provided they are Numeric.

To import and use `runSum` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runSum
```

**Signature**

```ts
export declare const runSum: <R, E>(self: Stream<number, E, R>) => Effect.Effect<number, E, R>
```
