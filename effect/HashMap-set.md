Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.set

Sets the specified key to the specified value using the internal hashing
function.

**Signature**

```ts
declare const set: { <K, V>(key: K, value: V): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, value: V): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L224)

Since v2.0.0