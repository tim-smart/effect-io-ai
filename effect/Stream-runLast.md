# runLast

Runs the stream to completion and yields the last value emitted by it,
discarding the rest of the elements.

To import and use `runLast` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runLast
```

**Signature**

```ts
export declare const runLast: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```
