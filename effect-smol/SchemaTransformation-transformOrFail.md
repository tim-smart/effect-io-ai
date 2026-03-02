Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.transformOrFail

Creates a `Transformation` from effectful decode and encode functions that
can fail with `Issue`.

When to use this:
- The transformation can fail (e.g. parsing, validation).
- The transformation requires Effect services.

Behavior:
- Each function receives the input value and `ParseOptions`.
- Must return an `Effect` that succeeds with the output or fails with `Issue`.
- Skips `None` inputs (missing keys) — functions are only called on present values.

**Example** (Parsing a date string that can fail)

```ts
import { Effect, Option, Schema, SchemaIssue, SchemaTransformation } from "effect"

const DateFromString = Schema.String.pipe(
  Schema.decodeTo(
    Schema.Date,
    SchemaTransformation.transformOrFail({
      decode: (s) => {
        const d = new Date(s)
        return isNaN(d.getTime())
          ? Effect.fail(new SchemaIssue.InvalidValue(Option.some(s), { message: "Invalid date" }))
          : Effect.succeed(d)
      },
      encode: (d) => Effect.succeed(d.toISOString())
    })
  )
)
```

See also:
- `transform` — for infallible, pure transformations
- `transformOptional` — for transformations that handle missing keys
- `make` — for transformations from existing Getters

**Signature**

```ts
declare const transformOrFail: <T, E, RD = never, RE = never>(options: { readonly decode: (e: E, options: AST.ParseOptions) => Effect.Effect<T, Issue.Issue, RD>; readonly encode: (t: T, options: AST.ParseOptions) => Effect.Effect<E, Issue.Issue, RE>; }) => Transformation<T, E, RD, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L345)

Since v4.0.0