Package: `effect`<br />
Module: `Channel`<br />

## Channel.bufferArray

Buffers array output elements in a queue with the configured `capacity` so a
faster producer can progress independently of a slower consumer.

**Details**

Finite queues use the `strategy` option. The default `"suspend"` strategy
applies backpressure, while `"dropping"` and `"sliding"` can discard output
elements when the queue is full. `"unbounded"` capacity does not use a finite
capacity strategy.

**Gotchas**

Input arrays are offered to the queue element-by-element and outputs are
rebuilt from the currently available queued elements, so upstream array
boundaries are not preserved.

**See**

- `buffer` for buffering output elements without flattening arrays

**Signature**

```ts
declare const bufferArray: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6804)

Since v4.0.0