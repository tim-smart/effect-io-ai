# updateService

Updates a service in the context of this channel.

To import and use `updateService` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.updateService
```

**Signature**

```ts
export declare const updateService: {
  <I, S>(
    tag: Context.Tag<I, S>,
    f: (resource: Types.NoInfer<S>) => Types.NoInfer<S>
  ): <OutElem, OutErr, InErr, OutDone, InDone, R>(
    self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>
  ) => Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, I | R>
  <OutElem, OutErr, InErr, OutDone, InDone, R, I, S>(
    self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>,
    tag: Context.Tag<I, S>,
    f: (resource: Types.NoInfer<S>) => Types.NoInfer<S>
  ): Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, I | R>
}
```
