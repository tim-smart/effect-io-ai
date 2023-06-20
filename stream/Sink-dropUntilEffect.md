# dropUntilEffect

Drops incoming elements until the effectful predicate is satisfied.

To import and use `dropUntilEffect` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.dropUntilEffect
```

**Signature**

```ts
export declare const dropUntilEffect: <In, R, E>(
  predicate: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, unknown>
```
