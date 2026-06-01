Package: `effect`<br />
Module: `Schema`<br />

## Schema.check

Attaches one or more filter checks to a schema without changing the
TypeScript type.

**Example** (Adding checks to a schema)

```ts
import { Schema } from "effect"

const AgeSchema = Schema.Number.pipe(
  Schema.check(Schema.isGreaterThanOrEqualTo(0), Schema.isLessThanOrEqualTo(120))
)
```

**Signature**

```ts
declare const check: <S extends Top>(checks_0: SchemaAST.Check<S["Type"]>, ...checks: Array<SchemaAST.Check<S["Type"]>>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4628)

Since v4.0.0