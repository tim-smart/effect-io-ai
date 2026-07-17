Package: `effect`<br />
Module: `PrimaryKey`<br />

## PrimaryKey.symbol

Defines the unique identifier used to identify objects that implement the `PrimaryKey` interface.

**When to use**

Use to implement the `PrimaryKey` protocol as a computed property key on
classes or object literals that expose a stable string identifier.

**See**

- `PrimaryKey` for the protocol interface that declares the method keyed by this symbol
- `value` for reading the string key from a `PrimaryKey` value
- `isPrimaryKey` for checking whether an unknown value carries this method

**Signature**

```ts
declare const symbol: "~effect/interfaces/PrimaryKey"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PrimaryKey.ts#L27)

Since v2.0.0