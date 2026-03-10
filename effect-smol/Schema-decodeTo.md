Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeTo

Creates a schema that transforms from a source schema to a target schema.

This is a curried function: call it with the target schema `to` (and optionally a transformation),
then call the returned function with the source schema `from`. The resulting schema decodes from
`From["Encoded"]` to `To["Type"]` and encodes from `To["Type"]` back to `From["Encoded"]`.

**Key guarantees:**
- Resulting schema has `Type = To["Type"]` and `Encoded = From["Encoded"]`
- When `transformation` is omitted, uses `Transformation.passthrough()` (schema composition)
- Combines decoding/encoding services from both `from` and `to` schemas
- Transformation `decode` maps `From["Type"]` → `To["Encoded"]` (used during encoding)
- Transformation `encode` maps `To["Encoded"]` → `From["Type"]` (used during decoding)

**AI note - Common mistakes:**
- **Direction confusion**: Remember `to` is the target (what you decode TO), `from` is the source (what you decode FROM)
- **Currying**: This is curried - must use pipe: `from.pipe(Schema.decodeTo(to))`
- **Transformation direction**: `decode` goes `From["Type"]` → `To["Encoded"]`, `encode` goes `To["Encoded"]` → `From["Type"]`
- **Passthrough assumption**: Without transformation, schemas must satisfy `To["Encoded"] === From["Type"]` or use passthrough helpers
- **Service dependencies**: Resulting schema requires services from both schemas; use `Schema.provideService` if needed

**Example** (String to Number with transformation)

```ts
import { Schema, SchemaGetter } from "effect"

const NumberFromString = Schema.String.pipe(
  Schema.decodeTo(
    Schema.Number,
    {
      decode: SchemaGetter.transform((s) => Number(s)),
      encode: SchemaGetter.transform((n) => String(n))
    }
  )
)

const result = Schema.decodeUnknownSync(NumberFromString)("123")
// result: 123
```

**Signature**

```ts
declare const decodeTo: { <To extends Top>(to: To): <From extends Top>(from: From) => compose<To, From>; <To extends Top, From extends Top, RD = never, RE = never>(to: To, transformation: { readonly decode: Getter.Getter<NoInfer<To["Encoded"]>, NoInfer<From["Type"]>, RD>; readonly encode: Getter.Getter<NoInfer<From["Type"]>, NoInfer<To["Encoded"]>, RE>; }): (from: From) => decodeTo<To, From, RD, RE>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2904)

Since v4.0.0