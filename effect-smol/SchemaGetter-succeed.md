Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.succeed

Creates a getter that always produces the given constant value, ignoring the input.

Use this when:
- A schema field should always decode to a fixed value.
- You need a placeholder getter that produces a known default.

Behavior:
- Pure, no side effects.
- Always returns `Option.some(t)` regardless of whether input is `Some` or `None`.

**Example** (Constant getter)

```ts
import { SchemaGetter } from "effect"

const alwaysZero = SchemaGetter.succeed(0)
// alwaysZero: Getter<0, unknown> — always produces 0
```

See also:
- `transform` — when you need to use the input value
- `passthrough` — when you want to keep the input as-is

**Signature**

```ts
declare const succeed: <const T, E>(t: T) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L193)

Since v4.0.0