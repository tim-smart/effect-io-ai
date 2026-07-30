Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.remove

Removes the node from the ring. No-op's if the node does not exist.

**Signature**

```ts
declare const remove: { <A extends PrimaryKey.PrimaryKey>(node: A): (self: HashRing<A>) => HashRing<A>; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A): HashRing<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L155)

Since v3.19.0