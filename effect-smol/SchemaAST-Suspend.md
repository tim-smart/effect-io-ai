Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Suspend

AST node for lazy/recursive schemas.

Wraps a thunk (`() => AST`) that is memoized on first call. Use this to
define recursive or mutually recursive schemas without infinite loops at
construction time.

**Example** (Recursive schema AST)

```ts
import { Schema, SchemaAST } from "effect"

interface Category {
  readonly name: string
  readonly children: ReadonlyArray<Category>
}

const Category = Schema.Struct({
  name: Schema.String,
  children: Schema.Array(Schema.suspend((): Schema.Codec<Category> => Category))
})

// The recursive branch is a Suspend node
```

**See**

- `isSuspend`

**Signature**

```ts
declare class Suspend { constructor(
    thunk: () => AST,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2455)

Since v4.0.0