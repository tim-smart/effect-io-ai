Package: `effect`<br />
Module: `Exit`<br />

## Exit.Exit

Represents the result of an Effect computation.

- Use when you need to synchronously inspect whether a computation succeeded or failed
- Use as an alternative to try/catch for Effect-based code

An `Exit<A, E>` is either:
- `Success<A, E>` containing a value of type `A`
- `Failure<A, E>` containing a `Cause<E>` describing why the computation failed

Since `Exit` is also an `Effect`, you can yield it inside `Effect.gen`.

**Example** (Pattern matching on an Exit)

```ts
import { Exit } from "effect"

const success: Exit.Exit<number> = Exit.succeed(42)
const failure: Exit.Exit<number, string> = Exit.fail("error")

const result = Exit.match(success, {
  onSuccess: (value) => `Got value: ${value}`,
  onFailure: (cause) => `Got error: ${cause}`
})
```

**See**

- `Success` for the success case
- `Failure` for the failure case
- `match` for pattern matching

**Signature**

```ts
type Exit<A, E> = Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L102)

Since v2.0.0