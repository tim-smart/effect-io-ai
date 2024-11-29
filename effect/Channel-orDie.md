# orDie

Translates channel failure into death of the fiber, making all failures
unchecked and not a part of the type of the channel.

To import and use `orDie` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.orDie
undefined

**Signature**

```ts
export declare const orDie: {
  <E>(
    error: LazyArg<E>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    error: LazyArg<E>
  ): Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>
}
```
