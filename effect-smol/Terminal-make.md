Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.make

Creates a `Terminal` service implementation.

**When to use**

Use to construct a custom `Terminal` service implementation from concrete
terminal capabilities when writing a platform adapter, test implementation,
or custom runtime service.

**Details**

The implementation object supplies `columns`, `rows`, `readInput`,
`readLine`, and `display`; `make` attaches the `Terminal` service marker so
the result can be provided through the `Terminal` context service.

**Signature**

```ts
declare const make: (impl: Omit<Terminal, typeof TypeId>) => Terminal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Terminal.ts#L202)

Since v4.0.0