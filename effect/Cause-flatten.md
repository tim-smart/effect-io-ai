## flatten

Flattens a nested `Cause` structure.

**Details**

This function takes a `Cause<Cause<E>>` and merges the layers into a single
`Cause<E>`. It's useful for eliminating additional nesting created by
repeated transformations or compositions.

**See**

- `flatMap` Compose nested causes

**Signature**

```ts
declare const flatten: <E>(self: Cause<Cause<E>>) => Cause<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1069)

Since v2.0.0