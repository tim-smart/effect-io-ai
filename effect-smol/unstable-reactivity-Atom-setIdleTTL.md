Package: `effect`<br />
Module: `Atom`<br />

## Atom.setIdleTTL

Returns a copy of an atom with an idle time-to-live: finite durations dispose it after inactivity, while an infinite duration keeps it alive.

**Signature**

```ts
declare const setIdleTTL: { (duration: Duration.Input): <A extends Atom<any>>(self: A) => A; <A extends Atom<any>>(self: A, duration: Duration.Input): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L221)

Since v4.0.0