Package: `effect`<br />
Module: `TArray`<br />

## TArray.make

Makes a new `TArray` that is initialized with specified values.

**Signature**

```ts
declare const make: <Elements extends [any, ...Array<any>]>(...elements: Elements) => STM.STM<TArray<Elements[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L341)

Since v2.0.0