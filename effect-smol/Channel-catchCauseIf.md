Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchCauseIf

Catches causes of failure that match a specific filter, allowing
conditional error recovery based on the type of failure.

**When to use**

Use to recover a channel only when its full `Cause` satisfies a boolean
predicate.

**Details**

When the predicate matches, the recovery function receives the original
cause. When it does not match, the returned channel fails with the original
cause.

**See**

- `catchCauseFilter` for selecting causes with a `Filter`
- `catchCause` for recovering from every cause
- `catchIf` for recovering from typed channel errors

**Signature**

```ts
declare const catchCauseIf: { <OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(predicate: Predicate.Predicate<Cause.Cause<OutErr>>, f: (cause: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: Predicate.Predicate<Cause.Cause<OutErr>>, f: (cause: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4147)

Since v4.0.0