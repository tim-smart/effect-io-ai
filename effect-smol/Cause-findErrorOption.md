Package: `effect`<br />
Module: `Cause`<br />

## Cause.findErrorOption

Returns the first typed error value `E` from a cause wrapped in
`Option.some`, or `Option.none` if no `Fail` reason exists.

This is a convenience wrapper around `findError` for code that
already works with `Option` instead of `Filter`.

**Example** (extracting an error as Option)

```ts
import { Cause, Option } from "effect"

const some = Cause.findErrorOption(Cause.fail("error"))
console.log(Option.isSome(some)) // true

const none = Cause.findErrorOption(Cause.die("defect"))
console.log(Option.isNone(none)) // true
```

**See**

- `findError` — `Filter`-based variant

**Signature**

```ts
declare const findErrorOption: <E>(input: Cause<E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L821)

Since v4.0.0