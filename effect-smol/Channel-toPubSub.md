Package: `effect`<br />
Module: `Channel`<br />

## Channel.toPubSub

Converts a channel to a PubSub for concurrent consumption.

`shutdownOnEnd` indicates whether the PubSub should be shut down when the
channel ends. By default this is `true`.

**Signature**

```ts
declare const toPubSub: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; }): <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<PubSub.PubSub<OutElem>, never, Env | Scope.Scope>; <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; }): Effect.Effect<PubSub.PubSub<OutElem>, never, Env | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7601)

Since v4.0.0