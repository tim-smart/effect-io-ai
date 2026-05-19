Package: `effect`<br />
Module: `Atom`<br />

## Atom.pull

Creates a writable atom that pulls an initial chunk from a stream and then pulls the next chunk whenever it is written to, accumulating items unless `disableAccumulation` is enabled.

**Signature**

```ts
declare const pull: <A, E>(create: ((get: AtomContext) => Stream.Stream<A, E, AtomRegistry>) | Stream.Stream<A, E, AtomRegistry>, options?: { readonly disableAccumulation?: boolean | undefined; }) => Writable<PullResult<A, E>, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1243)

Since v4.0.0