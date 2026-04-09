Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.checkEffect

Creates a getter that validates a value using an effectful check function.

Use this when:
- You need to validate a decoded value (e.g. check a constraint or call an external service).
- The validation may be asynchronous or require Effect services.

Behavior:
- Only runs when input is `Some` — `None` passes through.
- The check function returns a validation result:
  - `undefined` or `true` — value is valid, passes through.
  - `false` or a `string` — value is invalid, fails with an `Issue`.
  - An `Issue` object — fails with that issue directly.
  - `{ path, message }` — fails with a nested path issue.
- Does not transform the value — input and output types are the same.

**Example** (Effectful validation)

```ts
import { SchemaGetter, Effect } from "effect"

const nonNegative = SchemaGetter.checkEffect<number>((n) =>
  Effect.succeed(n >= 0 ? undefined : "must be non-negative")
)
```

See also:
- `transform` — when you need to change the value, not just validate
- `fail` — unconditional failure

**Signature**

```ts
declare const checkEffect: <T, R = never>(f: (input: T, options: AST.ParseOptions) => Effect.Effect<undefined | boolean | string | Issue.Issue | { readonly path: ReadonlyArray<PropertyKey>; readonly message: string; }, never, R>) => Getter<T, T, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L506)

Since v4.0.0