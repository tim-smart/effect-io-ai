Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeFilter

Creates a custom filter check from a predicate function. The predicate
receives the input value, the schema's AST, and parse options, and returns
`true`/`undefined` on success or a failure description on error.

**Example** (Custom filter check)
```ts
import { Schema } from "effect"

// Check that a number is even
const isEven = Schema.makeFilter(
  (n: number) => n % 2 === 0 || "expected an even number"
)

const EvenNumber = Schema.Number.check(isEven)
```

**Signature**

```ts
declare const makeFilter: <T>(filter: (input: T, ast: AST.AST, options: AST.ParseOptions) => undefined | boolean | string | Issue.Issue | { readonly path: ReadonlyArray<PropertyKey>; readonly message: string; }, annotations?: Annotations.Filter | undefined, abort?: boolean) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4853)

Since v4.0.0