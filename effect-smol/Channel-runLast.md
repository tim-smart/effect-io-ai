Package: `effect`<br />
Module: `Channel`<br />

## Channel.runLast

Runs a channel to completion and returns the last output element in an
`Option`.

**Details**

Returns `Option.some` with the last emitted element, or `Option.none` if the
channel completes without emitting output.

**Signature**

```ts
declare const runLast: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Option.Option<OutElem>, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7725)

Since v4.0.0