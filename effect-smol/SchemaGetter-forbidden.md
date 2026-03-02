Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.forbidden

Creates a getter that always fails with a `Forbidden` issue.

Use this when:
- A field or direction (encode/decode) should be disallowed entirely.
- You want a clear "forbidden" error message in schema validation output.

Behavior:
- Always fails with `Issue.Forbidden`.
- The message function receives the `Option<E>` input for context.

**Example** (Forbidding a decode direction)

```ts
import { SchemaGetter } from "effect"

const noEncode = SchemaGetter.forbidden<string, number>(
  () => "encoding is not supported"
)
```

See also:
- `fail` — fail with a custom issue type

**Signature**

```ts
declare const forbidden: <T, E>(message: (oe: Option.Option<E>) => string) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L256)

Since v4.0.0