Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.getShards

Computes a balanced shard distribution across the nodes in the ring.

**When to use**

Use to precompute ownership for a fixed number of shard indexes across the
current ring members.

**Signature**

```ts
declare const getShards: <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, count: number) => Array<A> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L367)

Since v3.19.0