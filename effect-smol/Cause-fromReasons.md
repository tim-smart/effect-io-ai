Package: `effect`<br />
Module: `Cause`<br />

## Cause.fromReasons

Creates a `Cause` from an array of `Reason` values.

Use this when you already have individual reasons (e.g. from filtering or
transforming another cause's `reasons` array) and need to wrap them back
into a `Cause`.

- Returns a new `Cause`; does not mutate the input array.
- An empty array produces a cause equivalent to `empty`.

**Example** (building a cause from reasons)

```ts
import { Cause } from "effect"

const reasons = [
  Cause.makeFailReason("err1"),
  Cause.makeFailReason("err2")
]
const cause = Cause.fromReasons(reasons)
console.log(cause.reasons.length) // 2
```

**See**

- `combine` — merge two existing causes

**Signature**

```ts
declare const fromReasons: <E>(reasons: ReadonlyArray<Reason<E>>) => Cause<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L466)

Since v2.0.0