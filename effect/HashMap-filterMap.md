Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.filterMap

Maps over the entries of the `HashMap` using the specified partial function
and filters out `None` values.

**Signature**

```ts
declare const filterMap: { <A, K, B>(f: (value: A, key: K) => Option<B>): (self: HashMap<K, A>) => HashMap<K, B>; <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => Option<B>): HashMap<K, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L435)

Since v2.0.0