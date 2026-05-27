Package: `effect`<br />
Module: `Layer`<br />

## Layer.forkMemoMapUnsafe

Constructs a child `MemoMap` that can reuse layers already memoized in the
parent while isolating any new layer allocations to the child map.

**When to use**

Use to synchronously fork a memo map for manual layer building when child
builds should see parent memoized layers without writing newly built layers
back to the parent.

**See**

- `forkMemoMap` for allocating the child memo map inside `Effect`
- `makeMemoMapUnsafe` for creating a root memo map without a parent

**Signature**

```ts
declare const forkMemoMapUnsafe: (parent: MemoMap) => MemoMap
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L528)

Since v4.0.0