Package: `effect`<br />
Module: `Exit`<br />

## Exit.failCause

Creates a failed Exit from a Cause.

- Use when you already have a `Cause<E>` and want to wrap it in an Exit
- Use for advanced error handling where you need full control over the Cause structure

Returns a `Failure<never, E>`. If you only have an error value, use
`fail` instead.

**Example** (Creating a failed Exit from a Cause)

```ts
import { Cause, Exit } from "effect"

const cause = Cause.fail("Something went wrong")
const exit = Exit.failCause(cause)
console.log(Exit.isFailure(exit)) // true
```

**See**

- `fail` to create a Failure from a plain error value
- `die` to create a Failure from a defect

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Exit<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L261)

Since v2.0.0