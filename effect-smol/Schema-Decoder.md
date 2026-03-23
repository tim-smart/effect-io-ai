Package: `effect`<br />
Module: `Schema`<br />

## Schema.Decoder

A `Codec` view for APIs that only *decode* (parse/validate) values.

Use `Decoder<T, RD>` to accept "any schema that can decode to `T`" without
constraining or depending on the encoded representation (`Encoded` is
`unknown`) or encoding services.

**Example** (Function that only needs to decode)

```ts
import { Schema } from "effect"

declare function validate<T>(decoder: Schema.Decoder<T>): (input: unknown) => T

validate(Schema.String)          // ok
validate(Schema.NumberFromString) // ok
```

**Signature**

```ts
export interface Decoder<out T, out RD = never> extends Codec<T, unknown, RD, unknown> {
  readonly "~rebuild.out": Decoder<T, RD>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L754)

Since v4.0.0