Package: `effect`<br />
Module: `Channel`<br />

## Channel.bufferArray

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a queue.

**Signature**

```ts
declare const bufferArray: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6278)

Since v2.0.0