Package: `effect`<br />
Module: `Channel`<br />

## Channel.ignoreCause

Ignores all errors in the channel including defects, converting them to an empty channel.

Use the `log` option to emit the full `Cause` when the channel fails.

**Signature**

```ts
declare const ignoreCause: <Arg extends Channel<any, any, any, any, any, any, any> | { readonly log?: boolean | Severity | undefined; } | undefined = { readonly log?: boolean | Severity | undefined; }>(selfOrOptions: Arg, options?: { readonly log?: boolean | Severity | undefined; } | undefined) => [Arg] extends [Channel<infer OutElem, infer _OutErr, infer OutDone, infer InElem, infer InErr, infer InDone, infer Env>] ? Channel<OutElem, never, OutDone | void, InElem, InErr, InDone, Env> : <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, never, OutDone | void, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5302)

Since v4.0.0