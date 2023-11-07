# provideService

Provides the effect with the single service it requires. If the effect
requires more than one service use `provideContext` instead.

To import and use `provideService` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.provideService
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(tag: T, service: Context.Tag.Service<T>): <
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Exclude<Env, Context.Tag.Identifier<T>>, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, T extends Context.Tag<any, any>>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    tag: T,
    service: Context.Tag.Service<T>
  ): Channel<Exclude<Env, Context.Tag.Identifier<T>>, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
