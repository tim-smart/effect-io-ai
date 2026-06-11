Package: `effect`<br />
Module: `Layer`<br />

## Layer.forkMemoMap

Constructs a child `MemoMap` effectfully, allowing it to reuse layers already
memoized in the parent while isolating any new layer allocations to the child
map.

**When to use**

Use when a layer build should inherit already memoized layers from an
existing `MemoMap` while keeping newly memoized layers out of the parent map.

**See**

- `makeMemoMap` for creating a root memo map in an `Effect`
- `forkMemoMapUnsafe` for the synchronous constructor variant
- `buildWithMemoMap` for building layers with an explicit memo map

**Signature**

```ts
declare const forkMemoMap: (parent: MemoMap) => Effect<MemoMap>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L547)

Since v4.0.0