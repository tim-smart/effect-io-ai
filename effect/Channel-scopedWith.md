# scopedWith

Use a function that receives a scope and returns an effect to emit an output
element. The output element will be the result of the returned effect, if
successful.

To import and use `scopedWith` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.scopedWith
```

**Signature**

```ts
export declare const scopedWith: <A, E, R>(
  f: (scope: Scope.Scope) => Effect.Effect<A, E, R>
) => Channel<A, unknown, E, unknown, unknown, unknown, R>
```
