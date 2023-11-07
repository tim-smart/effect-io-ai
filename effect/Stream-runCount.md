# runCount

Runs the stream and emits the number of elements processed

To import and use `runCount` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runCount
```

**Signature**

```ts
export declare const runCount: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, number>
```
