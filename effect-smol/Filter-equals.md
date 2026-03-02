Package: `effect`<br />
Module: `Filter`<br />

## Filter.equals

Creates a filter that only passes values equal to the specified value using structural equality.

**Signature**

```ts
declare const equals: <const A, Input = unknown>(value: A) => Filter<Input, A, EqualsWith<Input, A, A, Exclude<Input, A>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L376)

Since v4.0.0