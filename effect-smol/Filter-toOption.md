Package: `effect`<br />
Module: `Filter`<br />

## Filter.toOption

Converts a `Filter` into a function that returns `Some` for passed values
and `None` for filtered-out values.

**When to use**

Use when adapting a `Filter` to `Option`-based code where passed values
become `Some` and filtered-out inputs become `None`.

**See**

- `toResult` for keeping the filter failure value
- `toPredicate` for plain boolean pass/fail checks

**Signature**

```ts
declare const toOption: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => (input: A) => Option.Option<Pass>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L823)

Since v4.0.0