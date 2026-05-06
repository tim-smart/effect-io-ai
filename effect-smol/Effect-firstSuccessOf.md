Package: `effect`<br />
Module: `Effect`<br />

## Effect.firstSuccessOf

Runs a sequence of effects and returns the result of the first successful
one.

**Details**

This function executes the provided effects in sequence, stopping at the
first success. If an effect succeeds, its result is returned immediately and
no further effects in the sequence are executed.

If all effects fail, the returned effect fails with the error from the last
effect. If the collection is empty, the returned effect defects with an
`Error` whose message is `"Received an empty collection of effects"`.

**When to Use**

Use `firstSuccessOf` when you have prioritized fallback strategies, such as
attempting multiple APIs, reading configuration from several sources, or
trying alternative resource locations in order.

**Example**

```ts
import { Effect } from "effect"

const primary = Effect.fail("primary unavailable")
const secondary = Effect.succeed("secondary result")
const tertiary = Effect.sync(() => {
  throw new Error("not evaluated")
})

const program = Effect.firstSuccessOf([
  primary,
  secondary,
  tertiary
])

console.log(Effect.runSync(program))
// Output: "secondary result"
```

**Signature**

```ts
declare const firstSuccessOf: <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>) => Effect<Success<Eff>, Error<Eff>, Services<Eff>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4397)

Since v2.0.0