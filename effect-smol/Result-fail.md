Package: `effect`<br />
Module: `Result`<br />

## Result.fail

Creates a `Result` holding a `Failure` value.

**When to use**

Use to represent a failed computation with a typed failure value.

**Details**

- The success type `A` defaults to `never`

**Example** (Creating a failure)

```ts
import { Result } from "effect"

const result = Result.fail("Something went wrong")

console.log(Result.isFailure(result))
// Output: true
```

**See**

- `succeed` to create a Success
- `mapError` to transform the error

**Signature**

```ts
declare const fail: <E>(left: E) => Result<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L367)

Since v4.0.0