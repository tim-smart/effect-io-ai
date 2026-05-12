Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.MergeRecords

A utility type which merges a union of tool records into a single record.

**Signature**

```ts
type MergeRecords<U> = {
  readonly [K in Extract<U extends unknown ? keyof U : never, string>]: Extract<
    U extends Record<K, infer V> ? V : never,
    Tool.Any
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L519)

Since v1.0.0