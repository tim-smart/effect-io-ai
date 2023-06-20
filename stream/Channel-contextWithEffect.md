# contextWithEffect

Accesses the context of the channel in the context of an effect.

To import and use `contextWithEffect` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.contextWithEffect
```

**Signature**

```ts
export declare const contextWithEffect: <Env, Env1, OutErr, OutDone>(
  f: (env: Context.Context<Env>) => Effect.Effect<Env1, OutErr, OutDone>
) => Channel<Env | Env1, unknown, unknown, unknown, OutErr, never, OutDone>
```
