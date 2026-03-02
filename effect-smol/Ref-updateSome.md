Package: `effect`<br />
Module: `Ref`<br />

## Ref.updateSome

Atomically updates the value of the Ref using the given partial function.

If the partial function returns `Option.some`, the Ref is updated with the new value.
If it returns `Option.none`, the Ref is left unchanged.

**Example**

```ts
import { Effect, Ref } from "effect"
import * as Option from "effect/Option"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(5)

  // Only update if value is even
  yield* Ref.updateSome(
    counter,
    (n) => n % 2 === 0 ? Option.some(n * 2) : Option.none()
  )

  let current = yield* Ref.get(counter)
  console.log(current) // 5 (unchanged because 5 is odd)

  // Set to even number and try again
  yield* Ref.set(counter, 6)
  yield* Ref.updateSome(
    counter,
    (n) => n % 2 === 0 ? Option.some(n * 2) : Option.none()
  )

  current = yield* Ref.get(counter)
  console.log(current) // 12 (updated because 6 is even)
})
```

**Signature**

```ts
declare const updateSome: (<A>(f: (a: A) => Option.Option<A>) => (self: Ref<A>) => Effect.Effect<void>) & (<A>(self: Ref<A>, f: (a: A) => Option.Option<A>) => Effect.Effect<void>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L604)

Since v2.0.0