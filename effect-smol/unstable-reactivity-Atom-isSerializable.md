Package: `effect`<br />
Module: `Atom`<br />

## Atom.isSerializable

Returns `true` when an atom carries `Serializable` metadata.

**Signature**

```ts
declare const isSerializable: (self: Atom<any>) => self is Atom<any> & Serializable<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2426)

Since v4.0.0