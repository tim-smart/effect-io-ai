Package: `effect`<br />
Module: `Effect`<br />

## Effect.Yieldable

A type that can be yielded in an Effect generator function.

The `Yieldable` interface allows values to be used with the `yield*` syntax
in Effect generator functions, providing a clean way to sequence effectful operations.

**Example**

```ts
import { Effect } from "effect"

// Effects implement Yieldable and can be used with yield*
const effect1 = Effect.succeed(10)
const effect2 = Effect.succeed(20)

const program = Effect.gen(function*() {
  const a = yield* effect1 // yields the Effect which implements Yieldable
  const b = yield* effect2
  return a + b
})

Effect.runPromise(program).then(console.log) // 30
```

**Signature**

```ts
export interface Yieldable<
  out Self extends Yieldable<any, any, any, any>,
  out A,
  out E = never,
  out R = never
> {
  asEffect(): Effect<A, E, R>
  [Symbol.iterator](): EffectIterator<Self>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L208)

Since v4.0.0