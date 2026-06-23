Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isPattern

Creates a `Filter` that validates strings by running `RegExp.test`.

**When to use**

Use when string validation should be represented as a schema `Filter` backed
by a regular expression.

**Details**

The filter can be used with `Schema.filter` or attached directly to a
`String` AST node through checks. The regular expression source is stored in
annotations for serialization and arbitrary generation.

**Gotchas**

Use a non-global, non-sticky regular expression, or reset `lastIndex`
yourself, because `RegExp.test` is stateful for expressions with the `g` or
`y` flag.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L3032)

Since v4.0.0