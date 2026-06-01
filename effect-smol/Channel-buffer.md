Package: `effect`<br />
Module: `Channel`<br />

## Channel.buffer

Buffers individual output elements in a queue with the configured `capacity`
so a faster producer can progress independently of a slower consumer.

**When to use**

Use when output elements can be decoupled from downstream demand and the
configured backpressure or loss strategy is acceptable.

**Details**

Finite queues use the `strategy` option. The default `"suspend"` strategy
applies backpressure, while `"dropping"` and `"sliding"` can discard output
elements when the queue is full. `"unbounded"` capacity does not use a finite
capacity strategy.

**Gotchas**

Dropping and sliding strategies can lose output elements under backpressure.

**See**

- `bufferArray` for buffering elements from array outputs

**Signature**

```ts
declare const buffer: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6808)

Since v2.0.0