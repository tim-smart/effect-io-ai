Package: `effect`<br />
Module: `Flag`<br />

## Flag.withSchema

Validates and transforms a flag value using a Schema codec.

**Example** (Validating with schemas)

```ts
import { Schema } from "effect"
import { Flag } from "effect/unstable/cli"

const isEmail = Schema.isPattern(/^[^\s@]+@[^\s@]+\.[^\s@]+$/, {
  message: "Must be a valid email address"
})

// Parse and validate email with custom schema
const EmailSchema = Schema.String.pipe(
  Schema.check(isEmail)
)

const emailFlag = Flag.string("email").pipe(
  Flag.withSchema(EmailSchema)
)

// Parse JSON configuration with schema validation
const ConfigSchema = Schema.Struct({
  port: Schema.Number,
  host: Schema.String,
  ssl: Schema.optional(Schema.Boolean)
}).pipe(Schema.fromJsonString)

const configFlag = Flag.string("config").pipe(
  Flag.withSchema(ConfigSchema)
)
```

**Signature**

```ts
declare const withSchema: { <A, B>(schema: Schema.Codec<B, A>): (self: Flag<A>) => Flag<B>; <A, B>(self: Flag<A>, schema: Schema.Codec<B, A>): Flag<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L980)

Since v4.0.0