Package: `effect`<br />
Module: `Atom`<br />

## Atom.withRefresh

Ensures that the value of the atom is refreshed at most once per specified
duration.

**Signature**

```ts
declare const withRefresh: { (duration: Duration.Input): <A extends Atom<any>>(self: A) => WithoutSerializable<A>; <A extends Atom<any>>(self: A, duration: Duration.Input): WithoutSerializable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1568)

Since v4.0.0