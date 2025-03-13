Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.removeMany

Removes all entries in the `HashMap` which have the specified keys.

**Signature**

```ts
declare const removeMany: { <K>(keys: Iterable<K>): <V>(self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, keys: Iterable<K>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L356)

Since v2.0.0