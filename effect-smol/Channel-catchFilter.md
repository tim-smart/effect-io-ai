Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchFilter

Recovers from typed channel errors selected by a `Filter`.

**When to use**

Use to recover from channel errors with a reusable `Filter` when matching
can also narrow or transform the error before choosing the recovery channel.

**Details**

Successful filter results are handled by the recovery function. Failed
filter results are handled by `orElse` when provided. Without `orElse`,
failed filter results are re-failed.

**See**

- `catchIf` for selecting typed errors with a predicate
- `catchTag` for selecting tagged typed errors
- `catchCauseFilter` for selecting full causes with a `Filter`

**Signature**

```ts
declare const catchFilter: { <OutErr, EB, X, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(filter: Filter.Filter<OutErr, EB, X>, f: (failure: EB) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: X) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? X : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, EB, X, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.Filter<OutErr, EB, X>, f: (failure: EB) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: X) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? X : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4767)

Since v4.0.0