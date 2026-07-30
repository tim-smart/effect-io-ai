Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.addMany

Add new nodes to the ring. If a node already exists in the ring, it
will be updated. For example, you can use this to update the node's weight.

**Signature**

```ts
declare const addMany: { <A extends PrimaryKey.PrimaryKey>(nodes: Iterable<A>, options?: { readonly weight?: number | undefined; }): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, nodes: Iterable<A>, options?: { readonly weight?: number | undefined; }): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L77)

Since v3.19.0