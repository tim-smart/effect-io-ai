Package: `effect`<br />
Module: `Result`<br />

## Result.void

A pre-built `Result<void>` holding `undefined` as its success value.

- Use when you need a `Result` that represents "completed with no meaningful value"
- Equivalent to `Result.succeed(undefined)` but avoids an extra allocation

**Example** (Using void result)

```ts
import { Result } from "effect"

const result: Result.Result<void> = Result.void

console.log(Result.isSuccess(result))
// Output: true
```

**See**

- `succeed`

**Signature**

```ts
declare const void: Result<void, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L385)

Since v4.0.0