Package: `effect`<br />
Module: `Channel`<br />

## Channel.provide

Provides a `Layer` or `Context` to the channel, removing the corresponding
service requirements.

**Details**

Providing a `Context` delegates to `provideContext`. Providing a `Layer`
builds the layer in the channel scope. Use `options.local` to build a fresh
layer instance for this provision.

**Signature**

```ts
declare const provide: { <A, E = never, R = never>(layer: Layer.Layer<A, E, R> | Context.Context<A>, options?: { readonly local?: boolean | undefined; } | undefined): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Exclude<Env, A> | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E = never, R = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, layer: Layer.Layer<A, E, R> | Context.Context<A>, options?: { readonly local?: boolean | undefined; } | undefined): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Exclude<Env, A> | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7138)

Since v4.0.0