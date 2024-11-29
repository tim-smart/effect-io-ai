# mapInputContext

Transforms the context being provided to the channel with the specified
function.

To import and use `mapInputContext` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapInputContext
undefined

**Signature**

```ts
export declare const mapInputContext: {
  <Env0, Env>(
    f: (env: Context.Context<Env0>) => Context.Context<Env>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env0>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Env0>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (env: Context.Context<Env0>) => Context.Context<Env>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env0>
}
```
