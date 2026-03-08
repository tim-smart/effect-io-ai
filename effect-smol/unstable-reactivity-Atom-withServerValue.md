Package: `effect`<br />
Module: `Atom`<br />

## Atom.withServerValue

Overrides the value of an Atom when read on the server.

**Signature**

```ts
declare const withServerValue: { <A extends Atom<any>>(read: (get: <A>(atom: Atom<A>) => A) => Type<A>): (self: A) => A; <A extends Atom<any>>(self: A, read: (get: <A>(atom: Atom<A>) => A) => Type<A>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2190)

Since v4.0.0