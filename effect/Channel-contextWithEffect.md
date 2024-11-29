# contextWithEffect

Accesses the context of the channel in the context of an effect.

To import and use `contextWithEffect` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.contextWithEffect
undefined

**Signature**

```ts
export declare const contextWithEffect: <Env, OutDone, OutErr, Env1>(
  f: (env: Context.Context<Env>) => Effect.Effect<OutDone, OutErr, Env1>
) => Channel<never, unknown, OutErr, unknown, OutDone, unknown, Env | Env1>
```
