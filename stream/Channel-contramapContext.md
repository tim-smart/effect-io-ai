# contramapContext

Transforms the context being provided to the channel with the specified
function.

To import and use `contramapContext` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.contramapContext
```

**Signature**

```ts
export declare const contramapContext: {
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
