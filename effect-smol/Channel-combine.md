Package: `effect`<br />
Module: `Channel`<br />

## Channel.combine

Combines the elements from this channel and the specified channel by
repeatedly applying the function `f` to extract an element using both sides
and conceptually "offer" it to the destination channel. `f` can maintain
some internal state to control the combining process, with the initial
state being specified by `s`.

**Signature**

```ts
declare const combine: { <OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2, S, OutElem, OutErr, OutDone, A, E, R>(that: Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<OutElem, OutErr, OutDone>, pullRight: Pull.Pull<OutElem2, OutErr2, OutDone2>) => Effect.Effect<readonly [A, S], E, R>): <InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<A, Pull.ExcludeDone<E>, Cause.Done.Extract<E>, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env | Env2 | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2, S, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, that: Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<OutElem, OutErr, OutDone>, pullRight: Pull.Pull<OutElem2, OutErr2, OutDone2>) => Effect.Effect<readonly [A, S], E, R>): Channel<A, Pull.ExcludeDone<E>, Cause.Done.Extract<E>, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env | Env2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2480)

Since v4.0.0