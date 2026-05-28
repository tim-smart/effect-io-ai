Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterMapArrayEffect

Filters and maps each element inside emitted non-empty arrays using an
effectful `Filter`.

**Details**

Successful filter results are kept as mapped values. Failed filter results
are removed from the array. Arrays that become empty are discarded. Failures
from the effectful filter fail the returned channel.

**Signature**

```ts
declare const filterMapArrayEffect: { <OutElem, B, X, EX, RX>(filter: Filter.FilterEffect<Types.NoInfer<OutElem>, B, X, EX, RX>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<B>, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B, X, EX, RX>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.FilterEffect<OutElem, B, X, EX, RX>): Channel<Arr.NonEmptyReadonlyArray<B>, OutErr | EX, OutDone, InElem, InErr, InDone, Env | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3550)

Since v4.0.0