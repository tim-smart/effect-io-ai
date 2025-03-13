Package: `effect`<br />
Module: `Channel`<br />

## Channel.zip

Returns a new channel that is the sequential composition of this channel
and the specified channel. The returned channel terminates with a tuple of
the terminal values of both channels.

**Signature**

```ts
declare const zip: { <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, options?: { readonly concurrent?: boolean | undefined; } | undefined): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1 | OutElem, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, readonly [OutDone, OutDone1], InDone & InDone1, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, options?: { readonly concurrent?: boolean | undefined; } | undefined): Channel<OutElem | OutElem1, InElem & InElem1, OutErr | OutErr1, InErr & InErr1, readonly [OutDone, OutDone1], InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2229)

Since v2.0.0