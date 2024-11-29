# mapInputInEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's output elements.

To import and use `mapInputInEffect` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapInputInEffect
undefined

**Signature**

```ts
export declare const mapInputInEffect: {
  <InElem0, InElem, InErr, Env1>(
    f: (a: InElem0) => Effect.Effect<InElem, InErr, Env1>
  ): <OutElem, OutErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InElem0, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (a: InElem0) => Effect.Effect<InElem, InErr, Env1>
  ): Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env | Env1>
}
```
