Package: `effect`<br />
Module: `Atom`<br />

## Atom.Type

Extracts the value type produced by an `Atom`.

**Signature**

```ts
type Type<T> = T extends Atom<infer A> ? A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L91)

Since v4.0.0