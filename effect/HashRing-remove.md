Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.remove

Removes the node from the ring. No-op's if the node does not exist.

**When to use**

Use to remove a node that has left the pool so future lookups and shard
assignments stop returning it.

**Details**

Removal matches by `PrimaryKey.value`, so any value with the same primary key
removes the same ring member.

**Gotchas**

This mutates and returns the same ring instance.

**See**

- `add` for registering or updating a node
- `has` for checking membership by primary key

**Signature**

```ts
declare const remove: { <A extends PrimaryKey.PrimaryKey>(node: A): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L240)

Since v3.19.0