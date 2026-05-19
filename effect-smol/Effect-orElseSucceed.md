Package: `effect`<br />
Module: `Effect`<br />

## Effect.orElseSucceed

Recovers from a typed failure by producing a fallback success value.

**Details**

If the source effect succeeds, its value is preserved. If it fails in the
error channel, `orElseSucceed` evaluates the fallback and succeeds with that
value, removing the typed error from the returned effect.

Defects and interruptions are not recovered by this operator.

**Example** (Usage)

```ts
import { Effect } from "effect"

const validate = (age: number): Effect.Effect<number, string> => {
  if (age < 0) {
    return Effect.fail("NegativeAgeError")
  } else if (age < 18) {
    return Effect.fail("IllegalAgeError")
  } else {
    return Effect.succeed(age)
  }
}

const program = Effect.orElseSucceed(validate(-1), () => 18)

console.log(Effect.runSyncExit(program))
// Output:
// { _id: 'Exit', _tag: 'Success', value: 18 }
```

**Signature**

```ts
declare const orElseSucceed: { <A2>(evaluate: LazyArg<A2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, never, R>; <A, E, R, A2>(self: Effect<A, E, R>, evaluate: LazyArg<A2>): Effect<A | A2, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4033)

Since v2.0.0