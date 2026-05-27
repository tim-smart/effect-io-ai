Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.addMany

Add new nodes to the ring. If a node already exists in the ring, it
will be updated. For example, you can use this to update the node's weight.

**When to use**

Use to register or update several nodes in a `HashRing` at the same weight.

**Signature**

```ts
declare const addMany: { <A extends PrimaryKey.PrimaryKey>(nodes: Iterable<A>, options?: { readonly weight?: number | undefined; }): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, nodes: Iterable<A>, options?: { readonly weight?: number | undefined; }): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L179)

Since v3.19.0