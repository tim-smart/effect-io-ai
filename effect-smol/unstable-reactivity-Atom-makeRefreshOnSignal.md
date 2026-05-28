Package: `effect`<br />
Module: `Atom`<br />

## Atom.makeRefreshOnSignal

Creates a combinator that refreshes an atom whenever the supplied signal atom
changes.

**Details**

The derived atom also subscribes to the source atom so normal source updates are
forwarded to its own value.

**Signature**

```ts
declare const makeRefreshOnSignal: <_>(signal: Atom<_>) => <A extends Atom<any>>(self: A) => WithoutSerializable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2096)

Since v4.0.0