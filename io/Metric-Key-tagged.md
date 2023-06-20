# tagged

Returns a new `MetricKey` with the specified tag appended.

To import and use `tagged` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.tagged
```

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
