Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isPattern

Creates a `Filter` that validates strings against a regular expression.

- Returns a `Filter<string>` suitable for use with `Schema.filter` or
  attached directly to a `String` AST node via checks.
- The regex `source` is stored in annotations for serialization and
  arbitrary generation.

**Example** (Validating an email pattern)

```ts
import { SchemaAST } from "effect"

const emailFilter = SchemaAST.isPattern(/^[^@]+@[^@]+$/)
```

**See**

- `Filter`

**Signature**

```ts
declare const isPattern: (regExp: globalThis.RegExp, annotations?: Schema.Annotations.Filter) => Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2635)

Since v4.0.0