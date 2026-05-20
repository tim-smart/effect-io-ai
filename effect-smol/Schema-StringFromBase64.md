Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringFromBase64

Schema interface for `StringFromBase64`, a transformation between RFC4648
base64-encoded strings and UTF-8 strings.

**Signature**

```ts
export interface StringFromBase64 extends decodeTo<String, String> {
  readonly "Rebuild": StringFromBase64
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10510)

Since v3.10.0