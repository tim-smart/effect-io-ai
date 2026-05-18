Package: `effect`<br />
Module: `Option`<br />

## Option.OptionIterator

Iterator protocol used to yield an `Option` inside `gen`, returning the
contained value type back to the generator.

**Signature**

```ts
export interface OptionIterator<T extends Option<any>> {
  next(
    ...args: ReadonlyArray<any>
  ): IteratorResult<T, Option.Value<T>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L155)

Since v4.0.0