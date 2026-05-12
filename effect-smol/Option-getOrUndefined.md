Package: `effect`<br />
Module: `Option`<br />

## Option.getOrUndefined

Extracts the value from a `Some`, or returns `undefined` for `None`.

**When to use**

- Interoping with APIs that use `undefined` for missing values

**Behavior**

- `Some` → the inner value
- `None` → `undefined`

**Example** (Unwrapping to undefined)

```ts
import { Option } from "effect"

console.log(Option.getOrUndefined(Option.some(1)))
// Output: 1

console.log(Option.getOrUndefined(Option.none()))
// Output: undefined
```

**See**

- `getOrNull` to return `null` instead
- `getOrElse` for a custom fallback

**Signature**

```ts
declare const getOrUndefined: <A>(self: Option<A>) => A | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1055)

Since v2.0.0