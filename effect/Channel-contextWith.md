# contextWith

Accesses the context of the channel with the specified function.

To import and use `contextWith` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.contextWith
```

**Signature**

```ts
export declare const contextWith: <Env, OutDone>(
  f: (env: Context.Context<Env>) => OutDone
) => Channel<never, unknown, never, unknown, OutDone, unknown, Env>
```
