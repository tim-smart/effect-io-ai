Package: `effect`<br />
Module: `TSet`<br />

## TSet.make

Makes a new `TSet` that is initialized with specified values.

**Signature**

```ts
declare const make: <Elements extends Array<any>>(...elements: Elements) => STM.STM<TSet<Elements[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L143)

Since v2.0.0