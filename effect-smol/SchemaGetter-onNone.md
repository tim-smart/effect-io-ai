Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.onNone

Creates a getter that handles the case when the input is absent (`Option.None`).

**When to use**

Use when you need a schema getter to provide a fallback or computed value for
missing struct keys.
- Building custom "default value" logic more complex than `withDefault`.

**Details**

- When input is `None`, calls `f` to produce the result.
- When input is `Some`, passes it through unchanged.
- `f` receives the parse options and may return `None` to keep the value absent.

**Example** (Providing a default timestamp for a missing field)

```ts
import { Effect, Option, SchemaGetter } from "effect"

const withTimestamp = SchemaGetter.onNone<number>(() =>
  Effect.succeed(Option.some(Date.now()))
)
```

**See**

- `required` when absent input should fail
- `withDefault` for a simpler default value for undefined inputs
- `onSome` to handle only present values

**Signature**

```ts
declare const onNone: <T, E extends T = T, R = never>(f: (options: SchemaAST.ParseOptions) => Effect.Effect<Option.Option<T>, SchemaIssue.Issue, R>) => Getter<T, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L335)

Since v4.0.0