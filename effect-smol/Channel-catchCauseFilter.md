Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchCauseFilter

Recovers from channel failures whose full `Cause` is selected by a `Filter`.

**When to use**

Use when you need to recover a channel only from causes selected by a
`Filter`, and the recovery needs both the selected value and the original
`Cause`.

**Details**

When the filter succeeds, the recovery function receives the selected value
and the original cause. When the filter fails, the returned channel fails
with the residual cause produced by the filter.

**See**

- `catchCauseIf` for selecting causes with a predicate
- `catchFilter` for selecting typed errors with a `Filter`
- `catchCause` for recovering from every cause

**Signature**

```ts
declare const catchCauseFilter: { <OutErr, EB, X extends Cause.Cause<any>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(filter: Filter.Filter<Cause.Cause<OutErr>, EB, X>, f: (failure: EB, cause: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, Cause.Cause.Error<X> | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, EB, X extends Cause.Cause<any>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, filter: Filter.Filter<Cause.Cause<OutErr>, EB, X>, f: (failure: EB, cause: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, Cause.Cause.Error<X> | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4221)

Since v4.0.0