Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeTo

Reverses a schema transformation so the encoded schema is supplied first.

**When to use**

Use to define a transformation by naming the encoded schema before the
decoded schema.

**Details**

`encodeTo(to)(from)` is equivalent to `to.pipe(decodeTo(from))`. The `from`
schema acts as the target decoded schema and `to` acts as the encoded source.

**Example** (Encode a number back to string)

```ts
import { Schema, SchemaGetter } from "effect"

const NumberFromString = Schema.Number.pipe(
  Schema.encodeTo(Schema.String, {
    decode: SchemaGetter.transform((s: string) => Number(s)),
    encode: SchemaGetter.transform((n: number) => String(n))
  })
)
```

**Signature**

```ts
declare const encodeTo: { <To extends Top>(to: To): <From extends Top>(from: From) => decodeTo<From, To>; <To extends Top, From extends Top, RD = never, RE = never>(to: To, transformation: { readonly decode: Getter.Getter<NoInfer<From["Encoded"]>, NoInfer<To["Type"]>, RD>; readonly encode: Getter.Getter<NoInfer<To["Type"]>, NoInfer<From["Encoded"]>, RE>; }): (from: From) => decodeTo<From, To, RD, RE>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5111)

Since v4.0.0