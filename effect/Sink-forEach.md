# forEach

A sink that executes the provided effectful function for every element fed
to it.

To import and use `forEach` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEach
```

**Signature**

```ts
export declare const forEach: <In, R, E, _>(f: (input: In) => Effect.Effect<R, E, _>) => Sink<R, E, In, never, void>
```
