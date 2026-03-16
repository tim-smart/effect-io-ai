Package: `effect`<br />
Module: `Argument`<br />

## Argument.withSchema

Validates parsed values against a Schema.

**Example**

```ts
import { Schema } from "effect"
import { Argument } from "effect/unstable/cli"

const input = Argument.string("input").pipe(
  Argument.withSchema(Schema.NonEmptyString)
)
```

**Signature**

```ts
declare const withSchema: { <A, B>(schema: Schema.Codec<B, A>): (self: Argument<A>) => Argument<B>; <A, B>(self: Argument<A>, schema: Schema.Codec<B, A>): Argument<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L550)

Since v4.0.0