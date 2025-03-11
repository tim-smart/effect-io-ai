## singleton

Create a non-empty record from a single element.

**Signature**

```ts
declare const singleton: <K extends string | symbol, A>(key: K, value: A) => Record<K, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1227)

Since v2.0.0