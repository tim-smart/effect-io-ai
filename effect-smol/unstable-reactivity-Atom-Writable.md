Package: `effect`<br />
Module: `Atom`<br />

## Atom.Writable

Atom that can also be written to, using a `WriteContext` and an input value to update reactive state.

**Signature**

```ts
export interface Writable<R, W = R> extends Atom<R> {
  readonly [WritableTypeId]: WritableTypeId
  readonly write: (ctx: WriteContext<R>, value: W) => void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L157)

Since v4.0.0