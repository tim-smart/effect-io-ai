Package: `effect`<br />
Module: `Channel`<br />

## Channel.encodeText

Encodes incoming string chunks into `Uint8Array` values using `TextEncoder`.

**Details**

Each string inside an emitted array is encoded independently.

**Signature**

```ts
declare const encodeText: <Err, Done>() => Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, Err, Done, Arr.NonEmptyReadonlyArray<string>, Err, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6472)

Since v4.0.0