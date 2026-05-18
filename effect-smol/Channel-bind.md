Package: `effect`<br />
Module: `Channel`<br />

## Channel.bind

Adds a field to each object emitted by a channel by running another channel
derived from that object.

The field name must not already exist on the emitted object. The derived
channel's output becomes the value of the new field. `options.concurrency`
and `options.bufferSize` control how derived channels are flattened.

**Signature**

```ts
declare const bind: { <N extends string, OutElem extends object, B, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>(name: Exclude<N, keyof OutElem>, f: (a: NoInfer<OutElem>) => Channel<B, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<{ [K in N | keyof OutElem]: K extends keyof OutElem ? OutElem[K] : B; }, OutErr2 | OutErr, OutDone, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env2 | Env>; <OutElem extends object, OutErr, OutDone, InElem, InErr, InDone, Env, N extends string, B, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, name: Exclude<N, keyof OutElem>, f: (a: NoInfer<OutElem>) => Channel<B, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): Channel<{ [K in N | keyof OutElem]: K extends keyof OutElem ? OutElem[K] : B; }, OutErr2 | OutErr, OutDone, InElem & InElem2, InErr & InErr2, InDone & InDone2, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7261)

Since v4.0.0