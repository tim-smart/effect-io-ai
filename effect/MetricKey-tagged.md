## tagged

Returns a new `MetricKey` with the specified tag appended.

**Signature**

```ts
declare const tagged: { (key: string, value: string): <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>) => MetricKey<Type>; <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>, key: string, value: string): MetricKey<Type>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L198)

Since v2.0.0