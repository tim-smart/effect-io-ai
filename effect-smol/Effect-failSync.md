Package: `effect`<br />
Module: `Effect`<br />

## Effect.failSync

Creates an `Effect` that represents a recoverable error using a lazy evaluation.

**When to use**

Use to defer computing a recoverable error value until the effect is run.

**Details**

The error-producing function is evaluated each time the effect is executed.

**Example** (Lazily creating failures)

```ts
import { Data, Effect } from "effect"

class ProgramError extends Data.TaggedError("ProgramError")<{ readonly failedAt: Date }> {}

const program = Effect.failSync(() => new ProgramError({ failedAt: new Date() }))

Effect.runPromiseExit(program).then(console.log)
// Output: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1502)

Since v2.0.0