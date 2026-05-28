Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayFromBase64Url

Schema interface for `Uint8ArrayFromBase64Url`, a transformation between
URL-safe base64-encoded strings and `Uint8Array` values.

**Signature**

```ts
export interface Uint8ArrayFromBase64Url extends decodeTo<Uint8Array, String> {
  readonly "Rebuild": Uint8ArrayFromBase64Url
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11332)

Since v3.10.0