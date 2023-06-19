# tagged

Returns a new `MetricKey` with the specified tag appended.

Part of the `Key` module, imported from `@effect/io/Metric/Key`.

**Signature**

```ts
export declare const tagged: {
  (key: string, value: string): <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>
  ) => MetricKey<Type>
  <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>,
    key: string,
    value: string
  ): MetricKey<Type>
}
```
