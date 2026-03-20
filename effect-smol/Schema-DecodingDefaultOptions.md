Package: `effect`<br />
Module: `Schema`<br />

## Schema.DecodingDefaultOptions

Options for `withDecodingDefaultKey` and `withDecodingDefault`.

- `encodingStrategy`:
  - `"passthrough"` (default): pass the value through during encoding
  - `"omit"`: omit the key from the encoded output

**Signature**

```ts
type DecodingDefaultOptions = {
  readonly encodingStrategy?: "omit" | "passthrough" | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4320)

Since v4.0.0