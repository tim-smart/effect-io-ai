Package: `effect`<br />
Module: `Result`<br />

## Result.Result

A value that is either `Success<A, E>` or `Failure<A, E>`.

- Use `succeed` / `fail` to construct
- Use `match` to fold both branches
- Use `isSuccess` / `isFailure` to narrow the type

`E` defaults to `never`, so `Result<number>` means a result that cannot fail.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Either`

**Example** (Creating and matching a Result)

```ts
import { Result } from "effect"

const success = Result.succeed(42)
const failure = Result.fail("something went wrong")

const message = Result.match(success, {
  onSuccess: (value) => `Success: ${value}`,
  onFailure: (error) => `Error: ${error}`
})
console.log(message)
// Output: "Success: 42"
```

**See**

- `succeed` / `fail` to create values
- `match` to fold both branches
- `isSuccess` / `isFailure` for type guards

**Signature**

```ts
type Result<A, E> = Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L128)

Since v4.0.0