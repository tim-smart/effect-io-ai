Package: `effect`<br />
Module: `Atom`<br />

## Atom.Type

Extracts the value type produced by an `Atom`.

**Signature**

```ts
type Type<T> = T extends Atom<infer A> ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L119)

Since v4.0.0