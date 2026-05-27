Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.onSome

Creates a getter that handles present values (`Option.Some`), passing `None` through.

**When to use**

Use when you need to transform or validate only when a value is present.
- Missing keys should remain absent in the output.

**Details**

- When input is `None`, returns `None` (no-op).
- When input is `Some(e)`, calls `f(e, options)` to produce the result.
- `f` may return `None` to omit the value, or fail with an `Issue`.

**Example** (Transform only present values)

```ts
import { Effect, Option, SchemaGetter } from "effect"

const parseIfPresent = SchemaGetter.onSome<number, string>(
  (s) => Effect.succeed(Option.some(Number(s)))
)
```

**See**

- `onNone` to handle only absent values
- `transform` for a simpler pure transformation of present values
- `transformOrFail` for fallible transformation of present values

**Signature**

```ts
declare const onSome: <T, E, R = never>(f: (e: E, options: AST.ParseOptions) => Effect.Effect<Option.Option<T>, Issue.Issue, R>) => Getter<T, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L477)

Since v4.0.0