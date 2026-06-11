Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchIf

Recovers from typed channel errors that match a predicate or refinement.

**When to use**

Use to recover from typed channel errors when a predicate or refinement
selects the failures that should switch to a recovery channel.

**Details**

Matching errors are handled by the recovery function. Non-matching errors
are handled by `orElse` when provided. Without `orElse`, non-matching errors
are re-failed.

**See**

- `catch` for recovering from every typed channel error
- `catchFilter` for selecting typed errors with a `Filter`
- `catchTag` for selecting tagged typed errors
- `catchCauseFilter` for selecting full causes with a `Filter`

**Signature**

```ts
declare const catchIf: { <OutErr, EB extends OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(refinement: Predicate.Refinement<OutErr, EB>, f: (failure: EB) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: Exclude<OutErr, EB>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? Exclude<OutErr, EB> : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(predicate: Predicate.Predicate<OutErr>, f: (failure: OutErr) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: OutErr) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? OutErr : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, EB extends OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, refinement: Predicate.Refinement<OutErr, EB>, f: (failure: EB) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: Exclude<OutErr, EB>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? Exclude<OutErr, EB> : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: Predicate.Predicate<OutErr>, f: (failure: OutErr) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((failure: OutErr) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, OutErr1 | OutErr2 | (OutElem2 extends Types.unassigned ? OutErr : never), OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4524)

Since v4.0.0