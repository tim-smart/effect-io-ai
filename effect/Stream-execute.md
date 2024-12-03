# execute

Creates a stream that executes the specified effect but emits no elements.

To import and use `execute` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.execute
```

**Signature**

```ts
export declare const execute: <X, E, R>(effect: Effect.Effect<X, E, R>) => Stream<never, E, R>
```
