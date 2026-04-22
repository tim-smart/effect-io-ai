Package: `effect`<br />
Module: `Effect`<br />

## Effect.EffectIterator

Iterator interface for Effect generators, enabling Effect values to work with generator functions.

**Example**

```ts
import { Effect } from "effect"

// Effects are iterable and work with generator functions
const program = Effect.gen(function*() {
  const effect: Effect.Effect<number, never, never> = Effect.succeed(42)

  // The effect's iterator is used internally by yield*
  const result = yield* effect
  return result * 2
})

Effect.runPromise(program).then(console.log) // 84
```

**Signature**

```ts
export interface EffectIterator<T extends Yieldable<any, any, any, any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Yieldable.Success<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L387)

Since v2.0.0