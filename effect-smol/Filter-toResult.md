Package: `effect`<br />
Module: `Filter`<br />

## Filter.toResult

Converts a `Filter` into a function that returns the underlying
`Result.Result` for each input.

**When to use**

Use to adapt a `Filter` to APIs that expect a plain function returning
`Result`, while preserving both the pass value and the failure value.

**See**

- `toOption` for keeping only passed values
- `toPredicate` for plain boolean pass/fail checks

**Signature**

```ts
declare const toResult: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => (input: A) => Result.Result<Pass, Fail>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L846)

Since v4.0.0