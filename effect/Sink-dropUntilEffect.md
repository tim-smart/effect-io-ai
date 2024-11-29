# dropUntilEffect

Drops incoming elements until the effectful predicate is satisfied.

To import and use `dropUntilEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.dropUntilEffect
undefined

**Signature**

```ts
export declare const dropUntilEffect: <In, E, R>(
  predicate: (input: In) => Effect.Effect<boolean, E, R>
) => Sink<unknown, In, In, E, R>
```
