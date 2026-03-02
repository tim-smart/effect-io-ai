Package: `effect`<br />
Module: `Filter`<br />

## Filter.FilterEffect

Represents an effectful filter function that can produce Effects.

Similar to a regular Filter, but the filtering operation itself can be effectful,
allowing for asynchronous operations, error handling, and dependency injection.

**Example**

```ts
import { Effect, Filter, Result } from "effect"

// An effectful filter that validates user data
type User = { id: string; isActive: boolean }
type ValidationError = { message: string }

const validateUser: Filter.FilterEffect<
  string,
  User,
  User,
  ValidationError,
  never
> = (id) =>
  Effect.gen(function*() {
    const user: User = { id, isActive: id.length > 0 }
    return user.isActive ? Result.succeed(user) : Result.fail(user)
  })
```

**Signature**

```ts
export interface FilterEffect<
  in Input,
  out Pass,
  out Fail,
  out E = never,
  out R = never
> {
  (input: Input): Effect<Result.Result<Pass, Fail>, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L66)

Since v4.0.0