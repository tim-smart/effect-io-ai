Package: `effect`<br />
Module: `Atom`<br />

## Atom.PullSuccess

Extracts the item type from an atom whose value is a `PullResult`.

**Signature**

```ts
type PullSuccess<T> = T extends Atom<PullResult<infer A, infer _>> ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L135)

Since v4.0.0