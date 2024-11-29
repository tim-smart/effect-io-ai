# fromEffect

Use an effect to end a channel.

To import and use `fromEffect` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromEffect
undefined

**Signature**

```ts
export declare const fromEffect: <A, E, R>(
  effect: Effect.Effect<A, E, R>
) => Channel<never, unknown, E, unknown, A, unknown, R>
```
