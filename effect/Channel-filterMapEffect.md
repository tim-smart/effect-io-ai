Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterMapEffect

Filters and maps output elements using an effectful `Filter`.

**When to use**

Use to apply effectful logic that can discard channel output elements and
emit transformed values for the elements that pass.

**Details**

Successful filter results are emitted as mapped values. Failed filter
results are discarded. Failures from the effectful filter fail the returned
channel.

**See**

- `filterMap` for using a synchronous `Filter`
- `filterEffect` for effectfully keeping original output elements
- `mapEffect` for effectfully transforming every output element
- `filterMapArrayEffect` for effectful filtering of array outputs

**Signature**

```ts
declare const filterMapEffect: { <OutElem, B, X, EX, RX>(filter: Filter.FilterEffect<OutElem, B, X, EX, RX>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<B, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B, X, EX, RX>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.FilterEffect<OutElem, B, X, EX, RX>): Channel<B, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L3316)

Since v4.0.0