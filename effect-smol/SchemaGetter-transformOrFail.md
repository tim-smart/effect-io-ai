Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transformOrFail

Creates a getter that applies a fallible, effectful transformation to present values.

Use this when:
- The transformation may fail (e.g. parsing, validation).
- The transformation needs Effect services or is async.

Behavior:
- Skips `None` inputs — only called when a value is present.
- On success, wraps the result in `Some`.
- On failure, propagates the `Issue`.

**Example** (Parsing with failure)

```ts
import { SchemaGetter, SchemaIssue, Effect, Option } from "effect"

const safeParseInt = SchemaGetter.transformOrFail<number, string>(
  (s) => {
    const n = parseInt(s, 10)
    return isNaN(n)
      ? Effect.fail(new SchemaIssue.InvalidValue(Option.some(s), { message: "not an integer" }))
      : Effect.succeed(n)
  }
)
```

See also:
- `transform` — when transformation cannot fail
- `onSome` — when you need full `Option` control over the output

**Signature**

```ts
declare const transformOrFail: <T, E, R = never>(f: (e: E, options: AST.ParseOptions) => Effect.Effect<T, Issue.Issue, R>) => Getter<T, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L599)

Since v4.0.0