# runCount

Runs the stream and emits the number of elements processed

To import and use `runCount` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runCount
undefined

**Signature**

```ts
export declare const runCount: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<number, E, Exclude<R, Scope.Scope>>
```
