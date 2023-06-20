# execute

Creates a stream that executes the specified effect but emits no elements.

To import and use `execute` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.execute
```

**Signature**

```ts
export declare const execute: <R, E, _>(effect: Effect.Effect<R, E, _>) => Stream<R, E, never>
```
