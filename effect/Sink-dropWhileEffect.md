# dropWhileEffect

Drops incoming elements as long as the effectful predicate is satisfied.

To import and use `dropWhileEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.dropWhileEffect
undefined

**Signature**

```ts
export declare const dropWhileEffect: <In, E, R>(
  predicate: (input: In) => Effect.Effect<boolean, E, R>
) => Sink<unknown, In, In, E, R>
```
