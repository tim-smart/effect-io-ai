Package: `effect`<br />
Module: `Exit`<br />

## Exit.fail

Creates a failed Exit from a typed error value.

**When to use**

Use when you need to represent an expected typed failure as an `Exit`.

**Details**

The error is wrapped in a `Cause.Fail` internally.

Returns a `Failure<never, E>`.

**Example** (Creating a failed Exit)

```ts
import { Exit } from "effect"

const exit = Exit.fail("Something went wrong")
console.log(Exit.isFailure(exit)) // true
```

**See**

- `succeed` to create a successful Exit
- `die` to create a Failure from an unexpected defect
- `failCause` to create a Failure from a full Cause

**Signature**

```ts
declare const fail: <E>(e: E) => Exit<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L282)

Since v2.0.0