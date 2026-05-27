Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.withDefault

Creates a getter that replaces `undefined` values with a default.

**When to use**

Use when a field may be `undefined` in the encoded input and should have a fallback.

**Details**

- If the input is `Some(undefined)` or `None`, produces `Some(T)`.
- If the input is `Some(value)` where value is not `undefined`, passes it through.
- `defaultValue` is an `Effect` that will be executed each time a default is needed.

**Example** (Default value for optional field)

```ts
import { Effect, SchemaGetter } from "effect"

const withZero = SchemaGetter.withDefault(Effect.succeed(0))
// Getter<number, number | undefined>
```

**See**

- `onNone` to handle only absent keys (not `undefined` values)
- `required` when absent input should fail instead of using a default

**Signature**

```ts
declare const withDefault: <T, R = never>(defaultValue: Effect.Effect<T, Issue.Issue, R>) => Getter<T, T | undefined, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L707)

Since v4.0.0