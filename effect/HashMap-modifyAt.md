## modifyAt

Set or remove the specified key in the `HashMap` using the specified
update function. The value of the specified key will be computed using the
provided hash.

The update function will be invoked with the current value of the key if it
exists, or `None` if no such value exists.

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: HashMap.UpdateFn<V>): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, f: HashMap.UpdateFn<V>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L298)

Since v2.0.0