Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.has

Checks whether the ring contains a node with the same `PrimaryKey` value.

**When to use**

Use when you need to know whether registering a node would update an existing
ring member because another node already has the same primary-key identity.

**Details**

Membership is checked with `self.nodes.has(PrimaryKey.value(node))`, so
matching is by primary key, not object identity or weight.

**See**

- `add` for registering or updating nodes
- `remove` for removing nodes by the same primary-key identity
- `get` for routing an input string to a node

**Signature**

```ts
declare const has: { <A extends PrimaryKey.PrimaryKey>(node: A): (self: HashRing<A>) => boolean; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L274)

Since v3.19.0