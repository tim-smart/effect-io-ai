Package: `effect`<br />
Module: `Atom`<br />

## Atom.withRefresh

Creates a derived atom that reads the source and schedules a refresh after the
specified duration.

The scheduled refresh is canceled when the derived atom's lifetime is disposed.

**Signature**

```ts
declare const withRefresh: { (duration: Duration.Input): <A extends Atom<any>>(self: A) => WithoutSerializable<A>; <A extends Atom<any>>(self: A, duration: Duration.Input): WithoutSerializable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1709)

Since v4.0.0