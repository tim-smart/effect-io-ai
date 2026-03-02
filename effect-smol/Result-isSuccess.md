Package: `effect`<br />
Module: `Result`<br />

## Result.isSuccess

Checks whether a `Result` is a `Success`.

- Acts as a TypeScript type guard, narrowing to `Success<A, E>`
- After narrowing, you can access `.success` to read the value

**Example** (Narrowing to Success)

```ts
import { Result } from "effect"

const result = Result.succeed(42)

if (Result.isSuccess(result)) {
  console.log(result.success)
  // Output: 42
}
```

**See**

- `isFailure` for the opposite check
- `isResult` to check if a value is any Result

**Signature**

```ts
declare const isSuccess: <A, E>(self: Result<A, E>) => self is Success<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L599)

Since v4.0.0