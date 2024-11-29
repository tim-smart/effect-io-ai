# runSum

Runs the stream to a sink which sums elements, provided they are Numeric.

To import and use `runSum` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runSum
undefined

**Signature**

```ts
export declare const runSum: <E, R>(self: Stream<number, E, R>) => Effect.Effect<number, E, R>
```
