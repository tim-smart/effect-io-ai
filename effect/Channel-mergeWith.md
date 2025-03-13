Package: `effect`<br />
Module: `Channel`<br />

## Channel.mergeWith

Returns a new channel, which is the merge of this channel and the specified
channel, where the behavior of the returned channel on left or right early
termination is decided by the specified `leftDone` and `rightDone` merge
decisions.

**Signature**

```ts
declare const mergeWith: { <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1, OutDone, OutErr, OutErr2, OutDone2, OutErr3, OutDone3>(options: { readonly other: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>; readonly onSelfDone: (exit: Exit.Exit<OutDone, OutErr>) => MergeDecision.MergeDecision<Env1, OutErr1, OutDone1, OutErr2, OutDone2>; readonly onOtherDone: (ex: Exit.Exit<OutDone1, OutErr1>) => MergeDecision.MergeDecision<Env1, OutErr, OutDone, OutErr3, OutDone3>; }): <Env, InErr, InElem, InDone, OutElem>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1 | OutElem, InElem & InElem1, OutErr2 | OutErr3, InErr & InErr1, OutDone2 | OutDone3, InDone & InDone1, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1, OutErr2, OutDone2, OutErr3, OutDone3>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, options: { readonly other: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>; readonly onSelfDone: (exit: Exit.Exit<OutDone, OutErr>) => MergeDecision.MergeDecision<Env1, OutErr1, OutDone1, OutErr2, OutDone2>; readonly onOtherDone: (ex: Exit.Exit<OutDone1, OutErr1>) => MergeDecision.MergeDecision<Env1, OutErr, OutDone, OutErr3, OutDone3>; }): Channel<OutElem | OutElem1, InElem & InElem1, OutErr2 | OutErr3, InErr & InErr1, OutDone2 | OutDone3, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1547)

Since v2.0.0