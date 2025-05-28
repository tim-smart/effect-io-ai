Package: `effect`<br />
Module: `Effect`<br />

## Effect.isFailure

Checks if an effect has failed.

**Details**

This function evaluates whether an effect has resulted in a failure. It
returns a boolean value wrapped in an effect, with `true` indicating the
effect failed and `false` otherwise.

The resulting effect cannot fail (`never` in the error channel) but retains
the context of the original effect.

**Example**

```ts
import { Effect } from "effect"

const failure = Effect.fail("Uh oh!")

console.log(Effect.runSync(Effect.isFailure(failure)))
// Output: true

const defect = Effect.dieMessage("BOOM!")

Effect.runSync(Effect.isFailure(defect))
// throws: BOOM!
```

**Signature**

```ts
declare const isFailure: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10521)

Since v2.0.0