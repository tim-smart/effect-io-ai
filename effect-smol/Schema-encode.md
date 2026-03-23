Package: `effect`<br />
Module: `Schema`<br />

## Schema.encode

Applies a transformation to a schema's encoded type, creating a new schema where encoding/decoding
operate on `S["Encoded"]` rather than `S["Type"]`.

The `decode` getter maps `S["Encoded"]` → `S["Encoded"]` (applied during decoding),
and the `encode` getter maps `S["Encoded"]` → `S["Encoded"]` (applied during encoding).

**Example** (Upper-casing encoded strings)

```ts
import { Schema, SchemaGetter } from "effect"

const UpperFromLower = Schema.String.pipe(
  Schema.encode({
    decode: SchemaGetter.transform((s: string) => s.toLowerCase()),
    encode: SchemaGetter.transform((s: string) => s.toUpperCase())
  })
)
```

**Signature**

```ts
declare const encode: <S extends Top, RD = never, RE = never>(transformation: { readonly decode: Getter.Getter<S["Encoded"], S["Encoded"], RD>; readonly encode: Getter.Getter<S["Encoded"], S["Encoded"], RE>; }) => (self: S) => decodeTo<S, toEncoded<S>, RD, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4206)

Since v4.0.0