Package: `effect`<br />
Module: `Channel`<br />

## Channel.scoped

Runs a channel with a scope provided for the duration of the channel
execution, removing the channel's `Scope` requirement.

**Signature**

```ts
declare const scoped: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Exclude<Env, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6648)

Since v2.0.0