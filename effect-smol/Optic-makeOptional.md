Package: `effect`<br />
Module: `Optic`<br />

## Optic.makeOptional

Creates an `Optional` from a fallible getter and a fallible setter.

**When to use**

Use when you need an optic for a focus that may be missing on read and may
reject updates on write.

**Details**

- `getResult` should return `Result.fail(message)` on mismatch.
- `set` should return `Result.fail(message)` when the update cannot be
  applied.

**Example** (Accessing record keys safely)

```ts
import { Optic, Result } from "effect"

const atKey = (key: string) =>
  Optic.makeOptional<Record<string, number>, number>(
    (s) =>
      Object.hasOwn(s, key)
        ? Result.succeed(s[key])
        : Result.fail(`Key "${key}" not found`),
    (a, s) =>
      Object.hasOwn(s, key)
        ? Result.succeed({ ...s, [key]: a })
        : Result.fail(`Key "${key}" not found`)
  )

console.log(Result.isSuccess(atKey("x").getResult({ x: 1 })))
// Output: true
```

**See**

- `Optional` — the type this function returns
- `makeLens` — when reading always succeeds
- `makePrism` — when writing always succeeds

**Signature**

```ts
declare const makeOptional: <S, A>(getResult: (s: S) => Result.Result<A, string>, set: (a: A, s: S) => Result.Result<S, string>) => Optional<S, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L986)

Since v4.0.0