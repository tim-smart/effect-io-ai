Package: `effect`<br />
Module: `Result`<br />

## Result.fail

Creates a `Result` holding a `Failure` value.

- Use when you want to represent a failed computation
- The success type `A` defaults to `never`
- Does not mutate input; allocates a new `Failure` wrapper

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Either.left`

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L359)

Since v4.0.0