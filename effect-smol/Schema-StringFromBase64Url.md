Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringFromBase64Url

Schema interface for `StringFromBase64Url`, a transformation between URL-safe
base64-encoded strings and UTF-8 strings.

**Signature**

```ts
export interface StringFromBase64Url extends decodeTo<String, String> {
  readonly "Rebuild": StringFromBase64Url
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10541)

Since v3.10.0