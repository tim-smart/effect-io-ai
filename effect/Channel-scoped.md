# scoped

Use a scoped effect to emit an output element.

To import and use `scoped` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.scoped
undefined

**Signature**

```ts
export declare const scoped: <A, E, R>(
  effect: Effect.Effect<A, E, R>
) => Channel<A, unknown, E, unknown, unknown, unknown, Exclude<R, Scope.Scope>>
```
