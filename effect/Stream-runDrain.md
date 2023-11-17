# runDrain

Runs the stream only for its effects. The emitted elements are discarded.

To import and use `runDrain` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runDrain
```

**Signature**

```ts
export declare const runDrain: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, void>
```
