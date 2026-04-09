Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.onNone

Creates a getter that handles the case when the input is absent (`Option.None`).

Use this when:
- You need to provide a fallback or computed value for missing struct keys.
- Building custom "default value" logic more complex than `withDefault`.

Behavior:
- When input is `None`, calls `f` to produce the result.
- When input is `Some`, passes it through unchanged.
- `f` receives the parse options and may return `None` to keep the value absent.

**Example** (Default timestamp for missing field)

```ts
import { SchemaGetter, Effect, Option } from "effect"

const withTimestamp = SchemaGetter.onNone<number>(() =>
  Effect.succeed(Option.some(Date.now()))
)
```

See also:
- `required` — fails if input is absent
- `withDefault` — simpler default value for undefined inputs
- `onSome` — handle only present values

**Signature**

```ts
declare const onNone: <T, E extends T = T, R = never>(f: (options: AST.ParseOptions) => Effect.Effect<Option.Option<T>, Issue.Issue, R>) => Getter<T, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L400)

Since v4.0.0