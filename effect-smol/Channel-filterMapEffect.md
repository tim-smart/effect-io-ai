Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterMapEffect

Filters and maps output elements using an effectful `Filter`.

Successful filter results are emitted as mapped values. Failed filter
results are discarded. Failures from the effectful filter fail the returned
channel.

**Signature**

```ts
declare const filterMapEffect: { <OutElem, B, X, EX, RX>(filter: Filter.FilterEffect<OutElem, B, X, EX, RX>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<B, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B, X, EX, RX>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.FilterEffect<OutElem, B, X, EX, RX>): Channel<B, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3267)

Since v4.0.0