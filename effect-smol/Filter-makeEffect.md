Package: `effect`<br />
Module: `Filter`<br />

## Filter.makeEffect

Creates an effectful Filter from a function that returns an Effect.

This constructor is used when the filtering operation needs to perform
effectful computations, such as async operations, error handling, or
accessing services from the environment.

**Example**

```ts
import { Effect, Filter, Result } from "effect"

// Create an effectful filter that validates async
const asyncValidate = Filter.makeEffect((id: string) =>
  Effect.gen(function*() {
    const isValid = yield* Effect.succeed(id.length > 0)
    return isValid ? Result.succeed(id) : Result.fail(id)
  })
)
```

**Signature**

```ts
declare const makeEffect: <Input, Pass, Fail, E, R>(f: (input: Input) => Effect<Result.Result<Pass, Fail>, E, R>) => FilterEffect<Input, Pass, Fail, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L130)

Since v4.0.0