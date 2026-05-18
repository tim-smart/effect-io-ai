Package: `effect`<br />
Module: `Layer`<br />

## Layer.forkMemoMap

Constructs a child `MemoMap` that can reuse layers already memoized in the
parent while isolating any new layer allocations to the child map.

**Signature**

```ts
declare const forkMemoMap: (parent: MemoMap) => Effect<MemoMap>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L481)

Since v4.0.0