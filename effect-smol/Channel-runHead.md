Package: `effect`<br />
Module: `Channel`<br />

## Channel.runHead

Runs a channel until the first output element is available, returning it in
an `Option`.

**Details**

Returns `Option.some` with the first output element, or `Option.none` if the
channel completes without emitting output.

**Signature**

```ts
declare const runHead: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Option.Option<OutElem>, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7925)

Since v4.0.0