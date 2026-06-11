Package: `effect`<br />
Module: `Option`<br />

## Option.OptionIterator

Iterator protocol used to yield an `Option` inside `gen`, returning the
contained value type back to the generator.

**When to use**

Use when defining or typing `[Symbol.iterator]()` for `Option` values so
`yield*` can pass the contained value type back into `Option.gen`.

**See**

- `gen` for writing generator-based `Option` code that consumes this iterator protocol

**Signature**

```ts
export interface OptionIterator<T extends Option<any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Option.Value<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L101)

Since v4.0.0