Package: `effect`<br />
Module: `String`<br />

## String.String

Reference to the global `String` constructor.

**When to use**

Use when code in the Effect `String` namespace needs native JavaScript string
coercion or constructor behavior.

**Gotchas**

Calling `String(value)` returns a primitive string. Calling
`new String(value)` creates a boxed `String` object.

**See**

- `isString` for checking whether a value is a primitive string

**Signature**

```ts
declare const String: StringConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L100)

Since v4.0.0