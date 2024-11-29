# tagged

Returns a new `MetricKey` with the specified tag appended.

To import and use `tagged` from the "MetricKey" module:

ts
import \* as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.tagged
undefined

**Signature**

```ts
export declare const tagged: {
  (
    key: string,
    value: string
  ): <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>) => MetricKey<Type>
  <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>,
    key: string,
    value: string
  ): MetricKey<Type>
}
```
