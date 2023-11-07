# dropWhileEffect

Drops incoming elements as long as the effectful predicate is satisfied.

To import and use `dropWhileEffect` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.dropWhileEffect
```

**Signature**

```ts
export declare const dropWhileEffect: <In, R, E>(
  predicate: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, unknown>
```
