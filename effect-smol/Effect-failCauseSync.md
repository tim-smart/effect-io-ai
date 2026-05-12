Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCauseSync

Creates an `Effect` that represents a failure with a `Cause` computed lazily.

This function is useful when you need to create a failure effect with a
complex cause but want to defer the computation until the effect is run.

**Example**

```ts
import { Cause, Effect } from "effect"

const program = Effect.failCauseSync(() =>
  Cause.fail("Error computed at runtime")
)

Effect.runPromiseExit(program).then(console.log)
// Output: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1638)

Since v2.0.0