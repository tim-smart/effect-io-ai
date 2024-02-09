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
  <T extends Context.Tag<any, any>>(
    tag: T,
    f: (resource: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): <OutElem, OutErr, InErr, OutDone, InDone, R>(
    self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>
  ) => Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, T | R>
  <OutElem, OutErr, InErr, OutDone, InDone, R, T extends Context.Tag<any, any>>(
    self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>,
    tag: T,
    f: (resource: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R | T>
}
```
