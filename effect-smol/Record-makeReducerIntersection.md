Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerIntersection

A `Reducer` for combining `Record`s using intersection.

Values are combined using the provided `Combiner`.

**Signature**

```ts
declare const makeReducerIntersection: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1383)

Since v4.0.0