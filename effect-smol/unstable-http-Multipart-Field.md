Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.Field

Multipart form field containing a decoded text value.

**Details**

The `key` is the field name, `contentType` is the part media type, and `value`
is the decoded field content.

**Signature**

```ts
export interface Field extends Part.Proto {
  readonly _tag: "Field"
  readonly key: string
  readonly contentType: string
  readonly value: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L90)

Since v4.0.0