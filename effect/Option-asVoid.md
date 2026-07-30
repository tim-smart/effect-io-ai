Package: `effect`<br />
Module: `Option`<br />

## Option.asVoid

Replaces the value inside a `Some` with the constant value `void`, leaving
`None` unchanged.

**Details**

This function transforms an `Option` by replacing the value inside a `Some`
with `void`. If the `Option` is `None`, it remains unchanged.

This is particularly useful in scenarios where the presence or absence of a
value is significant, but the actual content of the value is irrelevant.

**Signature**

```ts
declare const asVoid: <_>(self: Option<_>) => Option<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L984)

Since v2.0.0