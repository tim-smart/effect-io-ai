## suspend

Lazily constructs a channel from the given side effect.

**Signature**

```ts
declare const suspend: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(evaluate: LazyArg<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2023)

Since v2.0.0