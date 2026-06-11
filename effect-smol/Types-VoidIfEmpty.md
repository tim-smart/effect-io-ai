Package: `effect`<br />
Module: `Types`<br />

## Types.VoidIfEmpty

Conditional type that returns `void` if `S` is an empty object type,
otherwise returns `S`.

**When to use**

Use to erase an empty object type from an API result or parameter position.

**Signature**

```ts
type VoidIfEmpty<S> = keyof S extends never ? void : S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L761)

Since v3.19.20