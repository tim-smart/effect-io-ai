Package: `effect`<br />
Module: `Channel`<br />

## Channel.decodeText

Decodes incoming `Uint8Array` chunks into strings using `TextDecoder`.

**Details**

Input chunks are decoded with streaming enabled so multi-byte characters may
span `Uint8Array` boundaries. The optional `encoding` and `options` are
passed to `TextDecoder`.

**Signature**

```ts
declare const decodeText: <Err, Done>(encoding?: string, options?: TextDecoderOptions) => Channel<Arr.NonEmptyReadonlyArray<string>, Err, Done, Arr.NonEmptyReadonlyArray<Uint8Array>, Err, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6440)

Since v4.0.0