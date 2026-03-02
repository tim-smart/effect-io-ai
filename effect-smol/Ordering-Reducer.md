Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.Reducer

A `Reducer` for combining `Ordering`s.

If any of the `Ordering`s is non-zero, the result is the first non-zero `Ordering`.
If all the `Ordering`s are zero, the result is zero.

**Signature**

```ts
declare const Reducer: Reducer_.Reducer<Ordering>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ordering.ts#L157)

Since v4.0.0