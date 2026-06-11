Package: `effect`<br />
Module: `Result`<br />

## Result.ResultIterator

Iterator protocol used to yield a `Result` inside `gen`, returning the
success value type back to the generator.

**When to use**

Use when defining or typing `[Symbol.iterator]()` for `Result` values so
`yield*` can pass the success value type back into `Result.gen`.

**See**

- `gen` for writing generator-based `Result` code that consumes this iterator protocol

**Signature**

```ts
export interface ResultIterator<T extends Result<any, any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Result.Success<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L129)

Since v4.0.0