# buffer

Creates a channel backed by a buffer. When the buffer is empty, the channel
will simply passthrough its input as output. However, when the buffer is
non-empty, the value inside the buffer will be passed along as output.

To import and use `buffer` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.buffer
undefined

**Signature**

```ts
export declare const buffer: <InElem, InErr, InDone>(options: {
  readonly empty: InElem
  readonly isEmpty: Predicate<InElem>
  readonly ref: Ref.Ref<InElem>
}) => Channel<InElem, InElem, InErr, InErr, InDone, InDone, never>
```
