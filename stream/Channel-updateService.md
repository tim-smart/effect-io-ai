# updateService

Updates a service in the context of this channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const updateService: {
  <T extends Context.Tag<any, any>>(tag: T, f: (resource: Context.Tag.Service<T>) => Context.Tag.Service<T>): <
    R,
    InErr,
    InDone,
    OutElem,
    OutErr,
    OutDone
  >(
    self: Channel<R, InErr, unknown, InDone, OutErr, OutElem, OutDone>
  ) => Channel<T | R, InErr, unknown, InDone, OutErr, OutElem, OutDone>
  <R, InErr, InDone, OutElem, OutErr, OutDone, T extends Context.Tag<any, any>>(
    self: Channel<R, InErr, unknown, InDone, OutErr, OutElem, OutDone>,
    tag: T,
    f: (resource: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): Channel<R | T, InErr, unknown, InDone, OutErr, OutElem, OutDone>
}
```
