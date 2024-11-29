# zip

Returns a new channel that is the sequential composition of this channel
and the specified channel. The returned channel terminates with a tuple of
the terminal values of both channels.

To import and use `zip` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.zip
undefined

**Signature**

```ts
export declare const zip: {
  <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(
    that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>,
    options?: { readonly concurrent?: boolean | undefined } | undefined
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<
    OutElem1 | OutElem,
    InElem & InElem1,
    OutErr1 | OutErr,
    InErr & InErr1,
    readonly [OutDone, OutDone1],
    InDone & InDone1,
    Env1 | Env
  >
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>,
    options?: { readonly concurrent?: boolean | undefined } | undefined
  ): Channel<
    OutElem | OutElem1,
    InElem & InElem1,
    OutErr | OutErr1,
    InErr & InErr1,
    readonly [OutDone, OutDone1],
    InDone & InDone1,
    Env | Env1
  >
}
```
