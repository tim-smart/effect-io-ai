# runHead

Runs the stream to completion and yields the first value emitted by it,
discarding the rest of the elements.

To import and use `runHead` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runHead
undefined

**Signature**

```ts
export declare const runHead: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```
