Package: `effect`<br />
Module: `Atom`<br />

## Atom.WithoutSerializable

Returns an atom type without serializable metadata, preserving `Writable` read and write types when the input atom is writable.

**Signature**

```ts
type WithoutSerializable<T> = T extends Writable<infer R, infer W> ? Writable<R, W>
  : Atom<Type<T>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L123)

Since v4.0.0