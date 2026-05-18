Package: `effect`<br />
Module: `Channel`<br />

## Channel.orElseIfEmpty

Runs a fallback channel if this channel completes without emitting any
output elements.

If the source emits at least one element, the source is used unchanged. If
the source completes before emitting an element, the fallback function
receives the source done value and returns the replacement channel.

**Signature**

```ts
declare const orElseIfEmpty: { <OutDone, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (leftover: Types.NoInfer<OutDone>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (leftover: Types.NoInfer<OutDone>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2719)

Since v2.0.0