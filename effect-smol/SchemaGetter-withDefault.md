Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.withDefault

Creates a getter that replaces `undefined` values with a default.

Use this when:
- A field may be `undefined` in the encoded input and should have a fallback.

Behavior:
- If the input is `Some(undefined)` or `None`, produces `Some(T)`.
- If the input is `Some(value)` where value is not `undefined`, passes it through.
- `defaultValue` is an `Effect` that will be executed each time a default is needed.

**Example** (Default value for optional field)

```ts
import { Effect, SchemaGetter } from "effect"

const withZero = SchemaGetter.withDefault(Effect.succeed(0))
// Getter<number, number | undefined>
```

See also:
- `onNone` — handle only absent keys (not `undefined` values)
- `required` — fail instead of providing a default

**Signature**

```ts
declare const withDefault: <T>(defaultValue: Effect.Effect<T>) => Getter<T, T | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L694)

Since v4.0.0