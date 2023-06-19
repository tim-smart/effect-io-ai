# buffer

Creates a channel backed by a buffer. When the buffer is empty, the channel
will simply passthrough its input as output. However, when the buffer is
non-empty, the value inside the buffer will be passed along as output.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const buffer: <InErr, InElem, InDone>(
  empty: InElem,
  isEmpty: Predicate<InElem>,
  ref: Ref.Ref<InElem>
) => Channel<never, InErr, InElem, InDone, InErr, InElem, InDone>
```
