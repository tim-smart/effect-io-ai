# mapInputContext

Transforms the context being provided to the channel with the specified
function.

To import and use `mapInputContext` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mapInputContext
```

**Signature**

```ts
export declare const mapInputContext: {
  <Env0, Env>(f: (env: Context.Context<Env0>) => Context.Context<Env>): <
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env0, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <InErr, InElem, InDone, OutErr, OutElem, OutDone, Env0, Env>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (env: Context.Context<Env0>) => Context.Context<Env>
  ): Channel<Env0, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
