Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.add

Adds a new node to the ring. If the node already exists in the ring, it
will be updated. For example, you can use this to update the node's weight.

**When to use**

Use to register one node in a `HashRing` so lookups and shard assignments can
return it, or update that node's weight.

**Details**

Nodes are matched by `PrimaryKey.value`. The weight defaults to `1` and is
clamped to at least `0.1`.

**Gotchas**

This mutates and returns the same ring instance.

**See**

- `addMany` for adding or updating several nodes
- `remove` for unregistering a node
- `has` for checking primary-key membership

**Signature**

```ts
declare const add: { <A extends PrimaryKey.PrimaryKey>(node: A, options?: { readonly weight?: number | undefined; }): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A, options?: { readonly weight?: number | undefined; }): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L206)

Since v3.19.0