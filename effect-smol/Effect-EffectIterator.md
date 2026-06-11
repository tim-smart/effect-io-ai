Package: `effect`<br />
Module: `Effect`<br />

## Effect.EffectIterator

Iterator interface for Effect generators, enabling Effect values to work with generator functions.

**When to use**

Use when defining or typing `[Symbol.iterator]()` for values typed as
`Effect`s so `yield*` can pass their success type back into `Effect.gen`.

**See**

- `gen` for writing generator-based `Effect` programs that consume this iterator protocol

**Signature**

```ts
export interface EffectIterator<T extends Effect<any, any, any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Success<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L244)

Since v4.0.0