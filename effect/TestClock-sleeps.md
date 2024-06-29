# sleeps

Accesses a `TestClock` instance in the context and returns a list of
times that effects are scheduled to run.

To import and use `sleeps` from the "TestClock" module:

```ts
import * as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.sleeps
```

**Signature**

```ts
export declare const sleeps: () => Effect.Effect<Chunk.Chunk<number>>
```
