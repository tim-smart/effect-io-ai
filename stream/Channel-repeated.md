# repeated

Creates a channel which repeatedly runs this channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const repeated: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
```
