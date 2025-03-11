## orDie

Translates channel failure into death of the fiber, making all failures
unchecked and not a part of the type of the channel.

**Signature**

```ts
declare const orDie: { <E>(error: LazyArg<E>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, error: LazyArg<E>): Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1625)

Since v2.0.0