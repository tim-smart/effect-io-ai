Package: `effect`<br />
Module: `Schema`<br />

## Schema.instanceOf

Creates a schema that validates an instance of a specific class constructor.

**Signature**

```ts
declare const instanceOf: <C extends abstract new (...args: any) => any, Iso = InstanceType<C>>(constructor: C, annotations?: Annotations.Declaration<InstanceType<C>> | undefined) => instanceOf<InstanceType<C>, Iso>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3401)

Since v4.0.0