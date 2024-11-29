# collect

Returns a new channel, which is the same as this one, except its outputs
are filtered and transformed by the specified partial function.

To import and use `collect` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.collect
undefined

**Signature**

```ts
export declare const collect: {
  <OutElem, OutElem2>(
    pf: (o: OutElem) => Option.Option<OutElem2>
  ): <InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, unknown, never, unknown, void, unknown, never>
  ) => Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    pf: (o: OutElem) => Option.Option<OutElem2>
  ): Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>
}
```
