Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.get

Gets the node which should handle the given input. Returns undefined if
the hashring has no elements with weight.

**When to use**

Use to route a single string input key to the current ring member responsible
for that key.

**See**

- `getShards` for assigning fixed shard indexes instead of routing
one input string at a time

**Signature**

```ts
declare const get: <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, input: string) => A | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L297)

Since v3.19.0