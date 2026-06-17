Package: `effect`<br />
Module: `Result`<br />

## Result.succeedNone

Provides a pre-built `Result<Option<never>>` that succeeds with `None`.

**When to use**

Use when an optional success should be absent, such as the `None` branch of
`transposeOption` or `transposeMapOption`.

**Details**

This is equivalent to `Result.succeed(Option.none())`, but reuses a shared
`Success` wrapper instead of allocating one each time.

**Example** (Succeeding with None)

```ts
import { Result } from "effect"

console.log(Result.isSuccess(Result.succeedNone))
// Output: true
```

**See**

- `succeedSome` for the `Some` counterpart
- `transposeOption` to transpose an Option that already contains a Result
- `transposeMapOption` to map and transpose an Option in one step

**Signature**

```ts
declare const succeedNone: Result<Option<never>, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1871)

Since v4.0.0