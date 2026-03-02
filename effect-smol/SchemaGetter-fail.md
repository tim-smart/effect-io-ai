Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.fail

Creates a getter that always fails with the given issue.

Use this when:
- A transformation should unconditionally reject input.
- Building custom validation getters that produce specific error types.

Behavior:
- Always fails with the `Issue` returned by `f`.
- The failure function receives the original `Option<E>` input for error context.

**Example** (Always-failing getter)

```ts
import { SchemaGetter, SchemaIssue, Option } from "effect"

const rejectAll = SchemaGetter.fail<string, string>(
  (oe) => new SchemaIssue.InvalidValue(oe, { message: "not allowed" })
)
```

See also:
- `forbidden` — convenience for `Forbidden` issues
- `checkEffect` — fail conditionally based on input value

**Signature**

```ts
declare const fail: <T, E>(f: (oe: Option.Option<E>) => Issue.Issue) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L225)

Since v4.0.0