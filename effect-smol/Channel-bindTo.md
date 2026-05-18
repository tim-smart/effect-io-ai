Package: `effect`<br />
Module: `Channel`<br />

## Channel.bindTo

Wraps each output element in an object under the specified field name.

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<{ [K in N]: OutElem; }, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, N extends string>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, name: N): Channel<{ [K in N]: OutElem; }, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7358)

Since v4.0.0