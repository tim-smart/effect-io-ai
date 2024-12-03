# provideService

Provides the effect with the single service it requires. If the effect
requires more than one service use `provideContext` instead.

To import and use `provideService` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.provideService
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(
    tag: T,
    service: Context.Tag.Service<T>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Context.Tag.Identifier<T>>>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, T extends Context.Tag<any, any>>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    tag: T,
    service: Context.Tag.Service<T>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Context.Tag.Identifier<T>>>
}
```
