Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.Reducer

Reducer for combining `Ordering`s.

**When to use**

Use to combine multiple comparison results in priority order, such as
checking secondary criteria only when earlier criteria compare as equal.

**Details**

If any of the `Ordering`s is non-zero, the result is the first non-zero `Ordering`.
If all the `Ordering`s are zero, the result is zero.

**Gotchas**

`combineAll` stops consuming the iterable as soon as it finds a non-zero
`Ordering`.

**Signature**

```ts
declare const Reducer: Reducer_.Reducer<Ordering>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ordering.ts#L170)

Since v4.0.0