Package: `effect`<br />
Module: `Option`<br />

## Option.getOrThrowWith

Extracts the value from a `Some`, or throws a custom error for `None`.

**When to use**

- Fail-fast unwrapping when absence is unexpected
- Providing a descriptive error for debugging

**Behavior**

- `Some` → returns the inner value
- `None` → throws the value returned by `onNone()`

**Example** (Throwing a custom error)

```ts
import { Option } from "effect"

console.log(Option.getOrThrowWith(Option.some(1), () => new Error("missing")))
// Output: 1

Option.getOrThrowWith(Option.none(), () => new Error("missing"))
// throws Error: missing
```

**See**

- `getOrThrow` for a version with a default error
- `getOrElse` for a non-throwing alternative

**Signature**

```ts
declare const getOrThrowWith: { (onNone: () => unknown): <A>(self: Option<A>) => A; <A>(self: Option<A>, onNone: () => unknown): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1130)

Since v2.0.0