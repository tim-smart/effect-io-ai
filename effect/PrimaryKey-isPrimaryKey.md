Package: `effect`<br />
Module: `PrimaryKey`<br />

## PrimaryKey.isPrimaryKey

Checks whether a value implements the `PrimaryKey` protocol.

**When to use**

Use to narrow an unknown value before treating it as a `PrimaryKey`.

**Details**

This is a structural guard for the `PrimaryKey.symbol` property.

**Gotchas**

This guard does not call the method or verify that it returns a string.

**See**

- `PrimaryKey` for the protocol being checked
- `value` for extracting the string value after narrowing

**Signature**

```ts
declare const isPrimaryKey: (u: unknown) => u is PrimaryKey
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PrimaryKey.ts#L87)

Since v4.0.0