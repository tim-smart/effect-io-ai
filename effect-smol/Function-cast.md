Package: `effect`<br />
Module: `Function`<br />

## Function.cast

Returns the input value with a different static type.

This is a type-level cast only; it performs no runtime validation or
conversion.

**Signature**

```ts
declare const cast: <A, B>(a: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L296)

Since v2.0.0