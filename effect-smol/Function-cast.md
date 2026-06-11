Package: `effect`<br />
Module: `Function`<br />

## Function.cast

Returns the input value with a different static type.

**When to use**

Use when you need an explicit type-level cast and accept that the value is
returned unchanged at runtime.

**Gotchas**

This is a type-level cast only; it performs no runtime validation or
conversion.

**See**

- `satisfies` for checking assignability without changing the resulting type

**Signature**

```ts
declare const cast: <A, B>(a: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L299)

Since v4.0.0