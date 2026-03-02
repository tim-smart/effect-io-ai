Package: `effect`<br />
Module: `Ref`<br />

## Ref.modifySome

Atomically modifies the value of the Ref using the given partial function.

The function receives the current value and returns an Option of [result, newValue].
If the function returns `Option.some([result, newValue])`, the Ref is updated with newValue and result is returned.
If it returns `Option.none()`, the Ref is left unchanged and the fallback value is returned.

**Example**

```ts
import { Effect, Ref } from "effect"
import * as Option from "effect/Option"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(5)

  // Only modify if value is greater than 3
  const result1 = yield* Ref.modifySome(
    counter,
    (n) =>
      n > 3
        ? [`incremented ${n}`, Option.some(n + 10)]
        : ["no change", Option.none()]
  )

  console.log(result1) // "incremented 5"

  const current1 = yield* Ref.get(counter)
  console.log(current1) // 15

  // Try to modify with a condition that fails
  const result2 = yield* Ref.modifySome(
    counter,
    (n) =>
      n < 10
        ? [`decremented ${n}`, Option.some(n - 5)]
        : ["no change", Option.none()]
  )

  console.log(result2) // "no change"

  const current2 = yield* Ref.get(counter)
  console.log(current2) // 15 (unchanged)
})
```

**Signature**

```ts
declare const modifySome: { <B, A>(pf: (a: A) => readonly [B, Option.Option<A>]): (self: Ref<A>) => Effect.Effect<B>; <A, B>(self: Ref<A>, pf: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L484)

Since v2.0.0