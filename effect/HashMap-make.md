## make

Constructs a new `HashMap` from an array of key/value pairs.

**Signature**

```ts
declare const make: <Entries extends ReadonlyArray<readonly [any, any]>>(...entries: Entries) => HashMap<Entries[number] extends readonly [infer K, any] ? K : never, Entries[number] extends readonly [any, infer V] ? V : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L116)

Since v2.0.0