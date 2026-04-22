Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCause

Creates an `Effect` that represents a failure with a specific `Cause`.

This function allows you to create effects that fail with complex error
structures, including multiple errors, defects, interruptions, and more.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1681)

Since v2.0.0