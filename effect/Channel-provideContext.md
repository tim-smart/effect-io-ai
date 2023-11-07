# provideContext

Provides the channel with its required context, which eliminates its
dependency on `Env`.

To import and use `provideContext` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <Env>(env: Context.Context<Env>): <InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<never, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <InErr, InElem, InDone, OutErr, OutElem, OutDone, Env>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    env: Context.Context<Env>
  ): Channel<never, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
