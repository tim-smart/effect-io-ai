Package: `effect`<br />
Module: `Schema`<br />

## Schema.Encoder

A `Codec` view for APIs that only *encode* values.

Use `Encoder<E, RE>` to accept "any schema that can encode to `E`" without
constraining or depending on the decoded `Type` (`Type` is `unknown`) or
decoding services.

**Example** (Function that only needs to encode)

```ts
import { Schema } from "effect"

declare function serialize<E>(encoder: Schema.Encoder<E>): (value: unknown) => E

serialize(Schema.String)          // ok — encodes to string
serialize(Schema.NumberFromString) // ok — encodes number to string
```

**Signature**

```ts
export interface Encoder<out E, out RE = never> extends Codec<unknown, E, unknown, RE> {
  readonly "~rebuild.out": Encoder<E, RE>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L780)

Since v4.0.0