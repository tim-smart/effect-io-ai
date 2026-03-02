Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerUnion

A `Reducer` for combining `Record`s using union.

Values for keys that exist in both records are combined using the provided `Combiner`.

**Signature**

```ts
declare const makeReducerUnion: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1368)

Since v4.0.0