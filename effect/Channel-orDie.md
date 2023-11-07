# orDie

Translates channel failure into death of the fiber, making all failures
unchecked and not a part of the type of the channel.

To import and use `orDie` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.orDie
```

**Signature**

```ts
export declare const orDie: {
  <E>(error: LazyArg<E>): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, E>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    error: LazyArg<E>
  ): Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
}
```
