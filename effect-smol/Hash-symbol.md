Package: `effect`<br />
Module: `Hash`<br />

## Hash.symbol

Defines the unique identifier used to identify objects that implement the Hash interface.

**When to use**

Use as the computed property key for the method that supplies a custom hash
value on a `Hash` implementor.

**See**

- `Hash` for the interface implemented with this symbol
- `isHash` for checking whether a value implements `Hash`
- `hash` for computing hash values

**Signature**

```ts
declare const symbol: "~effect/interfaces/Hash"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L31)

Since v2.0.0