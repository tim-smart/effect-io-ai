Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayFromHex

Schema interface for `Uint8ArrayFromHex`, a transformation between
hex-encoded strings and `Uint8Array` values.

**Signature**

```ts
export interface Uint8ArrayFromHex extends decodeTo<Uint8Array, String> {
  readonly "Rebuild": Uint8ArrayFromHex
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11136)

Since v3.10.0