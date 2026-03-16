Package: `effect`<br />
Module: `Option`<br />

## Option.getOrNull

Extracts the value from a `Some`, or returns `null` for `None`.

**When to use**

- Interoping with APIs that use `null` for missing values

**Behavior**

- `Some` → the inner value
- `None` → `null`

**Example** (Unwrapping to null)

```ts
import { Option } from "effect"

console.log(Option.getOrNull(Option.some(1)))
// Output: 1

console.log(Option.getOrNull(Option.none()))
// Output: null
```

**See**

- `getOrUndefined` to return `undefined` instead
- `getOrElse` for a custom fallback

**Signature**

```ts
declare const getOrNull: <A>(self: Option<A>) => A | null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1016)

Since v2.0.0