Package: `effect`<br />
Module: `Result`<br />

## Result.succeed

Creates a `Result` holding a `Success` value.

- Use when you have a value and want to lift it into the `Result` type
- The error type `E` defaults to `never`
- Does not mutate input; allocates a new `Success` wrapper

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Either.right`

**Example** (Wrapping a value)

```ts
import { Result } from "effect"

const result = Result.succeed(42)

console.log(Result.isSuccess(result))
// Output: true
```

**See**

- `fail` to create a Failure
- `void` for a pre-built `Success<void>`

**Signature**

```ts
declare const succeed: <A>(right: A) => Result<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L327)

Since v4.0.0