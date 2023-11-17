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
export declare const contextWithChannel: <Env, Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  f: (env: Context.Context<Env>) => Channel<Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env | Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>
```
