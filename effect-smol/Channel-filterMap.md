Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterMap

Filters and maps output elements using a `Filter`.

Successful filter results are emitted as mapped values. Failed filter
results are discarded. The source channel's errors and done value are
preserved.

**Signature**

```ts
declare const filterMap: { <OutElem, B, X>(filter: Filter.Filter<OutElem, B, X>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<B, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B, X>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.Filter<OutElem, B, X>): Channel<B, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3182)

Since v4.0.0