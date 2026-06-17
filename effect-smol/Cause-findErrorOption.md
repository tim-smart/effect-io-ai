Package: `effect`<br />
Module: `Cause`<br />

## Cause.findErrorOption

Returns the first typed error value `E` from a cause wrapped in
`Option.some`, or `Option.none` if no `Fail` reason exists.

**When to use**

Use when you need the first typed error value from a `Cause` as an `Option`,
discarding the original cause.

**Example** (Extracting an error as Option)

```ts
import { Cause, Option } from "effect"

const some = Cause.findErrorOption(Cause.fail("error"))
console.log(Option.isSome(some)) // true

const none = Cause.findErrorOption(Cause.die("defect"))
console.log(Option.isNone(none)) // true
```

**See**

- `findError` — `Result`-based variant

**Signature**

```ts
declare const findErrorOption: <E>(input: Cause<E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L869)

Since v4.0.0