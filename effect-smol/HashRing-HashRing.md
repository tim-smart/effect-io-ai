Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.HashRing

A weighted consistent-hashing ring for assigning inputs to nodes with stable
remapping as nodes are added or removed.

**When to use**

Use to maintain a mutable weighted hash ring for routing keys or shards to
nodes identified by `PrimaryKey`.

**Details**

Nodes are identified by their `PrimaryKey` value and can be iterated from the
ring.

**Signature**

```ts
export interface HashRing<A extends PrimaryKey.PrimaryKey> extends Pipeable, Iterable<A> {
  readonly [TypeId]: typeof TypeId
  readonly baseWeight: number
  totalWeightCache: number
  readonly nodes: Map<string, [node: A, weight: number]>
  ring: Array<[hash: number, node: string]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L89)

Since v3.19.0