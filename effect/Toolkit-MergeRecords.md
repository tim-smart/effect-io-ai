Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.MergeRecords

A utility type which merges two records of tools together.

**Signature**

```ts
type MergeRecords<U> = {
  readonly [K in Extract<U extends unknown ? keyof U : never, string>]: Extract<
    U extends Record<K, infer V> ? V : never,
    Tool.Any
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L444)

Since v1.0.0