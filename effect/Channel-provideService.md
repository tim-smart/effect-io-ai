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
  <I, S>(
    tag: Context.Tag<I, S>,
    service: Types.NoInfer<S>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, I>>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, I, S>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    tag: Context.Tag<I, S>,
    service: Types.NoInfer<S>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, I>>
}
```
