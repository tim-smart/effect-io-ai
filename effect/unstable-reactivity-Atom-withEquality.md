Package: `effect`<br />
Module: `Atom`<br />

## Atom.withEquality

Returns a copy of an atom that uses a custom equality function to detect
value changes.

**Details**

When an atom's value is rebuilt or written, the registry compares the new
value against the current one to decide whether dependents and listeners
should be notified. By default the comparison uses `Object.is`, so a
structurally equal but referentially distinct value still triggers
notifications. Providing an equality function lets the atom skip updates
when the new value is equal to the current one.

**Example** (Comparing values structurally)

```ts
import { Atom } from "effect/unstable/reactivity"

const point = Atom.make({ x: 0, y: 0 }).pipe(
  Atom.withEquality<{ x: number; y: number }>((a, b) => a.x === b.x && a.y === b.y)
)
```

**Signature**

```ts
declare const withEquality: { <A>(equals: (value: A, next: A) => boolean): <T extends Atom<A>>(self: T) => T; <T extends Atom<any>>(self: T, equals: (value: Type<T>, next: Type<T>) => boolean): T; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1536)

Since v4.0.0