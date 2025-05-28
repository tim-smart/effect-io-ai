Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.flatMap

Chains over the entries of the `HashMap` using the specified function.

**NOTE**: the hash and equal of both maps have to be the same.

**Signature**

```ts
declare const flatMap: { <A, K, B>(f: (value: A, key: K) => HashMap<K, B>): (self: HashMap<K, A>) => HashMap<K, B>; <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => HashMap<K, B>): HashMap<K, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L401)

Since v2.0.0