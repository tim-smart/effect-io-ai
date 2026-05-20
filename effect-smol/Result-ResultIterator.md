Package: `effect`<br />
Module: `Result`<br />

## Result.ResultIterator

Iterator protocol used to yield a `Result` inside `gen`, returning the
success value type back to the generator.

**Signature**

```ts
export interface ResultIterator<T extends Result<any, any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Result.Success<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L175)

Since v4.0.0