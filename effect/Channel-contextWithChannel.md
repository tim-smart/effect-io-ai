# contextWithChannel

Accesses the context of the channel in the context of a channel.

To import and use `contextWithChannel` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.contextWithChannel
```

**Signature**

```ts
export declare const contextWithChannel: <Env, OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1>(
  f: (env: Context.Context<Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1>
) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env1>
```
