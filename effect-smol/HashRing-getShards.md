Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.getShards

Distributes `count` shards across the nodes in the ring, attempting to
balance the number of shards allocated to each node. Returns undefined if
the hashring has no elements with weight.

**Signature**

```ts
declare const getShards: <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, count: number) => Array<A> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L195)

Since v4.0.0