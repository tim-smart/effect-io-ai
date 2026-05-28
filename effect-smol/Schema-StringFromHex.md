Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringFromHex

Schema interface for `StringFromHex`, a transformation between hex-encoded
strings and UTF-8 strings.

**Signature**

```ts
export interface StringFromHex extends decodeTo<String, String> {
  readonly "Rebuild": StringFromHex
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11108)

Since v3.10.0