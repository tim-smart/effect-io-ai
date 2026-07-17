Package: `effect`<br />
Module: `Option`<br />

## Option.getOrThrow

Extracts the value from a `Some`, or throws a default `Error` for `None`.

**When to use**

Use when you need quick fail-fast unwrapping of an `Option` and a generic
error is acceptable.

**Details**

- `Some` → returns the inner value
- `None` → throws `new Error("getOrThrow called on a None")`

**Example** (Throwing a default error)

```ts
import { Option } from "effect"

console.log(Option.getOrThrow(Option.some(1)))
// Output: 1

Option.getOrThrow(Option.none())
// throws Error: getOrThrow called on a None
```

**See**

- `getOrThrowWith` for a custom error
- `getOrElse` for a non-throwing alternative

**Signature**

```ts
declare const getOrThrow: <A>(self: Option<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1125)

Since v2.0.0