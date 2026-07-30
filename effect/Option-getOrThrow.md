Package: `effect`<br />
Module: `Option`<br />

## Option.getOrThrow

Extracts the value of an `Option` or throws a default error if the `Option`
is `None`.

**Details**

This function extracts the value from an `Option` if it is `Some`. If the
`Option` is `None`, it throws a default error. It is useful for fail-fast
scenarios where the absence of a value is treated as an exceptional case and
a default error is sufficient.

**Example**

```ts
import * as assert from "node:assert"
import { Option } from "effect"

assert.deepStrictEqual(Option.getOrThrow(Option.some(1)), 1)
assert.throws(() => Option.getOrThrow(Option.none()))
```

**See**

- `getOrThrowWith` for a version that allows you to provide a custom error.

**Signature**

```ts
declare const getOrThrow: <A>(self: Option<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L887)

Since v2.0.0