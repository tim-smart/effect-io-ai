Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.fail

Creates a getter that always fails with the given issue.

**When to use**

Use when you need a schema getter that unconditionally rejects input.
- Building custom validation getters that produce specific error types.

**Details**

- Always fails with the `Issue` returned by `f`.
- The failure function receives the original `Option<E>` input for error context.

**Example** (Defining an always-failing getter)

```ts
import { Option, SchemaGetter, SchemaIssue } from "effect"

const rejectAll = SchemaGetter.fail<string, string>(
  (oe) => new SchemaIssue.InvalidValue(oe, { message: "not allowed" })
)
```

**See**

- `forbidden` for a convenience helper for `Forbidden` issues
- `checkEffect` to fail conditionally based on input value

**Signature**

```ts
declare const fail: <T, E>(f: (oe: Option.Option<E>) => SchemaIssue.Issue) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L153)

Since v4.0.0