Package: `effect`<br />
Module: `Filter`<br />

## Filter.equalsStrict

Creates a `Filter` that passes only values strictly equal to the specified
value using JavaScript `===` comparison.

**Signature**

```ts
declare const equalsStrict: <const A, Input = unknown>(value: A) => Filter<Input, A, EqualsWith<Input, A, A, Exclude<Input, A>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L298)

Since v4.0.0