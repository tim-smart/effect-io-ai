Package: `effect`<br />
Module: `Effect`<br />

## Effect.failSync

Creates an `Effect` that represents a recoverable error using a lazy evaluation.

This function is useful when you need to create an error effect but want to
defer the computation of the error value until the effect is actually run.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1658)

Since v2.0.0