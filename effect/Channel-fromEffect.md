# fromEffect

Use an effect to end a channel.

To import and use `fromEffect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <R, E, A>(
  effect: Effect.Effect<R, E, A>
) => Channel<R, unknown, unknown, unknown, E, never, A>
```
