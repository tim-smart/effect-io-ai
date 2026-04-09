Package: `effect`<br />
Module: `Schema`<br />

## Schema.Schema

A typed view of a schema that tracks only the decoded (output) type `T`.

Use `Schema<T>` as a constraint when you want to accept "any schema that
decodes to `T`" and do not need to know or constrain the encoded
representation, required services, or any other type parameters.

This is a structural interface — concrete schema values are produced by the
constructors in this module (e.g. `Struct`, `String`, `Number`).
When you also need the encoded type or service requirements, use `Codec`.

**Example** (Function that accepts any schema decoding to `string`)

```ts
import { Schema } from "effect"

declare function print(schema: Schema.Schema<string>): void

print(Schema.String)            // ok
print(Schema.NonEmptyString)    // ok
```

**See**

- `Codec` — also tracks Encoded, DecodingServices, EncodingServices
- `Schema.Type` — extract the decoded type at the type level

**Signature**

```ts
export interface Schema<out T> extends Top {
  readonly "Type": T
  readonly "~rebuild.out": Schema<T>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L606)

Since v4.0.0