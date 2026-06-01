Package: `effect`<br />
Module: `Channel`<br />

## Channel.updateContext

Transforms the current context before running the channel.

**Details**

The function receives the surrounding context and returns the context to
provide to the channel. The returned channel requires the services needed to
build that context.

**Signature**

```ts
declare const updateContext: { <Env, R2>(f: (context: Context.Context<R2>) => Context.Context<Env>): <OutElem, OutErr, OutDone, InElem, InErr, InDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, R2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (context: Context.Context<R2>) => Context.Context<Env>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7404)

Since v4.0.0