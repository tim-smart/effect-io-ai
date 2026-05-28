Package: `effect`<br />
Module: `Channel`<br />

## Channel.combine

Combines two channels with a stateful pull function.

**When to use**

Use to coordinate pulling from two channels when each output element depends
on both sides and local state.

**Details**

The combining function receives the current state and pull functions for the
left and right channels. It returns the next output element together with the
next state.

**Signature**

```ts
declare const combine: { <OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2, S, OutElem, OutErr, OutDone, A, E, R>(that: Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<OutElem, OutErr, OutDone>, pullRight: Pull.Pull<OutElem2, OutErr2, OutDone2>) => Effect.Effect<readonly [A, S], E, R>): <InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<A, Pull.ExcludeDone<E>, Cause.Done.Extract<E>, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env | Env2 | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2, S, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, that: Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<OutElem, OutErr, OutDone>, pullRight: Pull.Pull<OutElem2, OutErr2, OutDone2>) => Effect.Effect<readonly [A, S], E, R>): Channel<A, Pull.ExcludeDone<E>, Cause.Done.Extract<E>, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env | Env2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2657)

Since v4.0.0