# forEachWhile

A sink that executes the provided effectful function for every element fed
to it until `f` evaluates to `false`.

To import and use `forEachWhile` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEachWhile
undefined

**Signature**

```ts
export declare const forEachWhile: <In, E, R>(
  f: (input: In) => Effect.Effect<boolean, E, R>
) => Sink<void, In, In, E, R>
```
