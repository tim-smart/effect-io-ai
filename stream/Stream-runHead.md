# runHead

Runs the stream to completion and yields the first value emitted by it,
discarding the rest of the elements.

To import and use `runHead` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.runHead
```

**Signature**

```ts
export declare const runHead: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, Option.Option<A>>
```
