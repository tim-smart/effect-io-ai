Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.mutate

Mutates the `HashMap` within the context of the provided function.

**Signature**

```ts
declare const mutate: { <K, V>(f: (self: HashMap<K, V>) => void): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, f: (self: HashMap<K, V>) => void): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L283)

Since v2.0.0