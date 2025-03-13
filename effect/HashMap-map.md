Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.map

Maps over the entries of the `HashMap` using the specified function.

**Signature**

```ts
declare const map: { <A, V, K>(f: (value: V, key: K) => A): (self: HashMap<K, V>) => HashMap<K, A>; <K, V, A>(self: HashMap<K, V>, f: (value: V, key: K) => A): HashMap<K, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L367)

Since v2.0.0