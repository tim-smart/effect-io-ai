Package: `effect`<br />
Module: `Ref`<br />

## Ref.modifySome

Computes a result atomically and optionally updates the value of the `Ref`.

**When to use**

Use to compute a return value while optionally updating a plain `Ref`.

**Details**

The callback receives the current value and returns `[result, nextValue]`,
where `nextValue` is an `Option`. If `nextValue` is `Option.some(value)`,
the `Ref` is updated to `value`; if it is `Option.none()`, the `Ref` is left
unchanged. The returned effect always succeeds with `result`.

**Example** (Conditionally modifying a value)

```ts
import { Effect, Option, Ref } from "effect"

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

**See**

- `modify` for always storing a new value
- `updateSome` for optional updates without a separate return value

**Signature**

```ts
declare const modifySome: { <B, A>(pf: (a: A) => readonly [B, Option.Option<A>]): (self: Ref<A>) => Effect.Effect<B>; <A, B>(self: Ref<A>, pf: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ref.ts#L558)

Since v2.0.0