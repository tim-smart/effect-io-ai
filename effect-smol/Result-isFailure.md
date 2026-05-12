Package: `effect`<br />
Module: `Result`<br />

## Result.isFailure

Checks whether a `Result` is a `Failure`.

- Acts as a TypeScript type guard, narrowing to `Failure<A, E>`
- After narrowing, you can access `.failure` to read the error value

**Example** (Narrowing to Failure)

```ts
import { Result } from "effect"

const result = Result.fail("oops")

if (Result.isFailure(result)) {
  console.log(result.failure)
  // Output: "oops"
}
```

**See**

- `isSuccess` for the opposite check
- `isResult` to check if a value is any Result

**Signature**

```ts
declare const isFailure: <A, E>(self: Result<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L583)

Since v4.0.0