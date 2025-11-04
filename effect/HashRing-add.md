Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.add

Add a new node to the ring. If the node already exists in the ring, it
will be updated. For example, you can use this to update the node's weight.

**Signature**

```ts
declare const add: { <A extends PrimaryKey.PrimaryKey>(node: A, options?: { readonly weight?: number | undefined; }): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A, options?: { readonly weight?: number | undefined; }): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L137)

Since v3.19.0