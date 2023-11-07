# mapInputIn

Returns a new channel which is the same as this one but applies the given
function to the input channel's output elements.

To import and use `mapInputIn` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mapInputIn
```

**Signature**

```ts
export declare const mapInputIn: {
  <InElem0, InElem>(f: (a: InElem0) => InElem): <Env, InErr, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
  <Env, InErr, InDone, OutErr, OutElem, OutDone, InElem0, InElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InElem0) => InElem
  ): Channel<Env, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
}
```
