Package: `effect`<br />
Module: `Ref`<br />

## Ref.getAndUpdateSome

Atomically gets the current value of the Ref and updates it with the given partial function.

If the partial function returns `Option.some`, the Ref is updated with the new value.
If it returns `Option.none`, the Ref is left unchanged.
Always returns the value that was in the Ref before the attempted update.

**Example**

```ts
import { Effect, Ref } from "effect"
import * as Option from "effect/Option"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(5)

  // Only update if value is greater than 3
  const previous1 = yield* Ref.getAndUpdateSome(
    counter,
    (n) => n > 3 ? Option.some(n * 2) : Option.none()
  )
  console.log(previous1) // 5

  const current1 = yield* Ref.get(counter)
  console.log(current1) // 10

  // Try to update again (won't update since 10 > 3 is true but let's say condition is n < 3)
  const previous2 = yield* Ref.getAndUpdateSome(
    counter,
    (n) => n < 3 ? Option.some(n * 2) : Option.none()
  )
  console.log(previous2) // 10

  const current2 = yield* Ref.get(counter)
  console.log(current2) // 10 (unchanged)
})
```

**Signature**

```ts
declare const getAndUpdateSome: (<A>(pf: (a: A) => Option.Option<A>) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, pf: (a: A) => Option.Option<A>) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L334)

Since v2.0.0