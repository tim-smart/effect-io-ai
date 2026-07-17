Package: `effect`<br />
Module: `Atom`<br />

## Atom.map

Maps the current value of an atom with a pure function.

**Details**

When the source atom is writable, the returned atom remains writable and keeps
the source atom's write input type.

**Signature**

```ts
declare const map: { <R extends Atom<any>, B>(f: (_: Type<R>) => B): (self: R) => [R] extends [Writable<infer _, infer RW>] ? Writable<B, RW> : Atom<B>; <R extends Atom<any>, B>(self: R, f: (_: Type<R>) => B): [R] extends [Writable<infer _, infer RW>] ? Writable<B, RW> : Atom<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1636)

Since v4.0.0