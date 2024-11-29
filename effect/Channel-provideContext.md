# provideContext

Provides the channel with its required context, which eliminates its
dependency on `Env`.

To import and use `provideContext` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.provideContext
undefined

**Signature**

```ts
export declare const provideContext: {
  <Env>(
    env: Context.Context<Env>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, never>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    env: Context.Context<Env>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, never>
}
```
