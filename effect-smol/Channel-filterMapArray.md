Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterMapArray

Filters and maps each element inside emitted non-empty arrays using a
`Filter`.

**Details**

Successful filter results are kept as mapped values. Failed filter results
are removed from the array. Arrays that become empty are discarded.

**Signature**

```ts
declare const filterMapArray: { <OutElem, B, X>(filter: Filter.Filter<Types.NoInfer<OutElem>, B, X>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<B>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B, X>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.Filter<OutElem, B, X>): Channel<Arr.NonEmptyReadonlyArray<B>, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3433)

Since v4.0.0