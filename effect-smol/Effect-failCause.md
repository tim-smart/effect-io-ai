Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCause

Creates an `Effect` that represents a failure with a specific `Cause`.

**When to use**

Use when you already have a full `Cause` and need to preserve defects,
interruptions, annotations, or combined failures in the effect's failure
channel.

**Details**

This function allows you to create effects that fail with complex error
structures, including multiple errors, defects, interruptions, and more.

**Example** (Failing with a full Cause)

```ts
import { Cause, Effect } from "effect"

const program = Effect.failCause(
  Cause.fail("Network error")
)

Effect.runPromiseExit(program).then(console.log)
// Output: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1601)

Since v2.0.0