Package: `effect`<br />
Module: `Atom`<br />

## Atom.family

Creates a memoized atom factory that returns the same object for the same argument, using weak references for cached values when the platform supports them.

**Signature**

```ts
declare const family: <Arg, T extends object>(f: (arg: Arg) => T) => (arg: Arg) => T
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1343)

Since v4.0.0