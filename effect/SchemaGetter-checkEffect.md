Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.checkEffect

Creates a getter that validates a value using an effectful check function.

**When to use**

Use when you need a schema getter to validate a decoded value (e.g. check a
constraint or call an external service).
- The validation may be asynchronous or require Effect services.

**Details**

- Only runs when input is `Some` — `None` passes through.
- The check function returns a validation result:
  - `undefined` or `true` — value is valid, passes through.
  - `false` or a `string` — value is invalid, fails with an `Issue`.
  - An `Issue` object — fails with that issue directly.
  - `{ path, issue }` — fails with a nested path issue (`issue` may be a
    message string or a full `SchemaIssue.Issue`).
- Does not transform the value — input and output types are the same.

**Example** (Validating effectfully)

```ts
import { Effect, SchemaGetter } from "effect"

const nonNegative = SchemaGetter.checkEffect<number>((n) =>
  Effect.succeed(n >= 0 ? undefined : "must be non-negative")
)
```

**See**

- `transform` when you need to change the value, not just validate
- `fail` for unconditional failure

**Signature**

```ts
declare const checkEffect: <T, R = never>(f: (input: T, options: SchemaAST.ParseOptions) => Effect.Effect<undefined | boolean | Schema.FilterIssue, never, R>) => Getter<T, T, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L447)

Since v4.0.0