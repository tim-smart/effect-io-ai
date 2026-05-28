Package: `effect`<br />
Module: `Duration`<br />

## Duration.ReducerSum

Reducer for summing `Duration`s.

**When to use**

Use to sum many `Duration` values through APIs that consume a `Reducer`.

**Details**

`ReducerSum` uses `sum` and starts from `zero`, so `combineAll([])` returns
`zero`.

**See**

- `sum` for adding two duration values directly
- `CombinerMax` for keeping the longest duration instead of summing
- `CombinerMin` for keeping the shortest duration instead of summing

**Signature**

```ts
declare const ReducerSum: Reducer.Reducer<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1816)

Since v4.0.0