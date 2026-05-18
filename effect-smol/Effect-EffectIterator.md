Package: `effect`<br />
Module: `Effect`<br />

## Effect.EffectIterator

Iterator interface for Effect generators, enabling Effect values to work with generator functions.

**Signature**

```ts
export interface EffectIterator<T extends Effect<any, any, any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Success<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L262)

Since v2.0.0