## getOrNull

Returns the value contained in the `Option` if it is `Some`; otherwise,
returns `null`.

**Details**

This function provides a way to extract the value of an `Option` while
falling back to `null` if the `Option` is `None`.

It is particularly useful in scenarios where `null` is an acceptable
placeholder for the absence of a value, such as when interacting with APIs or
systems that use `null` as a default for missing values.

**Example**

```ts
import { Option } from "effect"

console.log(Option.getOrNull(Option.some(1)))
// Output: 1

console.log(Option.getOrNull(Option.none()))
// Output: null
```

**Signature**

```ts
declare const getOrNull: <A>(self: Option<A>) => A | null
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L753)

Since v2.0.0