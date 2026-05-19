Package: `effect`<br />
Module: `Types`<br />

## Types.VoidIfEmpty

Conditional type that returns `void` if `S` is an empty object type,
otherwise returns `S`.

**Signature**

```ts
type VoidIfEmpty<S> = keyof S extends never ? void : S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L714)

Since v3.19.20