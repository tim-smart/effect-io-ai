# forEach

A sink that executes the provided effectful function for every element fed
to it.

To import and use `forEach` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEach
undefined

**Signature**

```ts
export declare const forEach: <In, X, E, R>(f: (input: In) => Effect.Effect<X, E, R>) => Sink<void, In, never, E, R>
```
