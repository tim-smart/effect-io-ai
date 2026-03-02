Package: `effect`<br />
Module: `Filter`<br />

## Filter.instanceOf

Creates a filter that only passes instances of the given constructor.

**Signature**

```ts
declare const instanceOf: <K extends new (...args: any) => any>(constructor: K) => <Input>(u: Input) => Result.Result<InstanceType<K>, Exclude<Input, InstanceType<K>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L259)

Since v4.0.0