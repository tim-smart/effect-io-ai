Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeTo

Like `decodeTo` but reverses the direction: the `from` schema acts as the target (decoded type)
and `to` acts as the encoded source.

`encodeTo(to)(from)` is equivalent to `to.pipe(decodeTo(from))` — useful when it reads more
naturally to specify the encoded schema first.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4174)

Since v4.0.0