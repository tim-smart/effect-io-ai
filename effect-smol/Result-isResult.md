Package: `effect`<br />
Module: `Result`<br />

## Result.isResult

Tests whether a value is a `Result` (either `Success` or `Failure`).

- Use to validate unknown input before operating on it as a `Result`
- Returns `true` for both `Success` and `Failure` variants
- Acts as a TypeScript type guard, narrowing to `Result<unknown, unknown>`

**Example** (Checking if a value is a Result)

```ts
import { Result } from "effect"

console.log(Result.isResult(Result.succeed(1)))
// Output: true

console.log(Result.isResult({ value: 1 }))
// Output: false
```

**See**

- `isSuccess` / `isFailure` to narrow to a specific variant

**Signature**

```ts
declare const isResult: (input: unknown) => input is Result<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L545)

Since v4.0.0