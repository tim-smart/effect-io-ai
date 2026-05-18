Package: `effect`<br />
Module: `Channel`<br />

## Channel.flattenTake

Flattens a channel that emits `Take` values into a channel that emits the
`Take` outputs directly.

Output `Take` values are emitted as non-empty arrays. Failed `Take` values
fail the returned channel. Done `Take` values complete the returned channel.

**Signature**

```ts
declare const flattenTake: <OutElem, OutErr, OutDone, OutErr2, OutDone2, InElem, InErr, InDone, Env>(self: Channel<Take.Take<OutElem, OutErr, OutDone>, OutErr2, OutDone2, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr | OutErr2, OutDone, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2946)

Since v4.0.0