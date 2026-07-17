Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCauseSync

Creates an `Effect` that represents a failure with a `Cause` computed lazily.

**When to use**

Use to defer computing a full `Cause` until the effect is run.

**Details**

The cause-producing function is evaluated each time the effect is executed.

**Example** (Lazily creating a Cause)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1568)

Since v2.0.0