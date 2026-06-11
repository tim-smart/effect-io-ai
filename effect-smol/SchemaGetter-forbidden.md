Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.forbidden

Creates a getter that always fails with a `Forbidden` issue.

**When to use**

Use when you need a schema getter to disallow a field or direction
(encode/decode) entirely.
- You want a clear "forbidden" error message in schema validation output.

**Details**

- Always fails with `SchemaIssue.Forbidden`.
- The message function receives the `Option<E>` input for context.

**Example** (Forbidding a decode direction)

```ts
import { SchemaGetter } from "effect"

const noEncode = SchemaGetter.forbidden<string, number>(
  () => "encoding is not supported"
)
```

**See**

- `fail` to fail with a custom issue type

**Signature**

```ts
declare const forbidden: <T, E>(message: (oe: Option.Option<E>) => string) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L186)

Since v4.0.0