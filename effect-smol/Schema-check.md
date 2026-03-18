Package: `effect`<br />
Module: `Schema`<br />

## Schema.check

Pipeable function that attaches one or more filter checks to a schema without
changing the TypeScript type.

**Example** (Adding checks to a schema)
```ts
import { Schema } from "effect"

const AgeSchema = Schema.Number.pipe(
  Schema.check(Schema.isGreaterThanOrEqualTo(0), Schema.isLessThanOrEqualTo(120))
)
```

**Signature**

```ts
declare const check: <S extends Top>(checks_0: AST.Check<S["Type"]>, ...checks: Array<AST.Check<S["Type"]>>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3651)

Since v4.0.0