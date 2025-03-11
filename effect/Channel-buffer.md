## buffer

Creates a channel backed by a buffer. When the buffer is empty, the channel
will simply passthrough its input as output. However, when the buffer is
non-empty, the value inside the buffer will be passed along as output.

**Signature**

```ts
declare const buffer: <InElem, InErr, InDone>(options: { readonly empty: InElem; readonly isEmpty: Predicate<InElem>; readonly ref: Ref.Ref<InElem>; }) => Channel<InElem, InElem, InErr, InErr, InDone, InDone, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L265)

Since v2.0.0