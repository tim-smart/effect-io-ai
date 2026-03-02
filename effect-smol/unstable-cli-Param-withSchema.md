Package: `effect`<br />
Module: `Param`<br />

## Param.withSchema

Validates parsed values against a Schema, providing detailed error messages.

**Example**

```ts
import { Schema } from "effect"
import * as Param from "effect/unstable/cli/Param"
// @internal - this module is not exported publicly

const isEmail = Schema.isPattern(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)

const Email = Schema.String.pipe(
  Schema.check(isEmail)
)

const email = Param.string(Param.flagKind, "email").pipe(
  Param.withSchema(Email)
)
```

**Signature**

```ts
declare const withSchema: { <A, B>(schema: Schema.Codec<B, A>): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, schema: Schema.Codec<B, A>): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1568)

Since v4.0.0