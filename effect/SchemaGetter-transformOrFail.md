Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transformOrFail

Creates a getter that applies a fallible, effectful transformation to present values.

**When to use**

Use when you need a schema getter for a transformation that may fail, require
Effect services, or run asynchronously.

**Details**

- Skips `None` inputs — only called when a value is present.
- On success, wraps the result in `Some`.
- On failure, propagates the `Issue`.

**Example** (Parsing with failure)

```ts
import { Effect, Option, SchemaGetter, SchemaIssue } from "effect"

const safeParseInt = SchemaGetter.transformOrFail<number, string>(
  (s) => {
    const n = parseInt(s, 10)
    return isNaN(n)
      ? Effect.fail(new SchemaIssue.InvalidValue(Option.some(s), { message: "not an integer" }))
      : Effect.succeed(n)
  }
)
```

**See**

- `transform` when transformation cannot fail
- `onSome` when you need full `Option` control over the output

**Signature**

```ts
declare const transformOrFail: <T, E, R = never>(f: (e: E, options: SchemaAST.ParseOptions) => Effect.Effect<T, SchemaIssue.Issue, R>) => Getter<T, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L539)

Since v4.0.0