Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerUnion

Creates a `Reducer` for combining `Record`s using union, with values for keys that exist in both records combined
using the provided `Combiner`.

**Signature**

```ts
declare const makeReducerUnion: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1444)

Since v4.0.0