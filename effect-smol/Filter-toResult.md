Package: `effect`<br />
Module: `Filter`<br />

## Filter.toResult

Converts a `Filter` into a function that returns the underlying
`Result.Result` for each input.

**Signature**

```ts
declare const toResult: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => (input: A) => Result.Result<Pass, Fail>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L677)

Since v4.0.0