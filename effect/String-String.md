Package: `effect`<br />
Module: `String`<br />

## String.String

Exposes the global string constructor.

**When to use**

Use to access native JavaScript string coercion or constructor behavior from
the Effect module namespace.

**Gotchas**

Calling `String(value)` returns a primitive string. Calling
`new String(value)` creates a boxed `String` object.

**See**

- `isString` for checking whether a value is a primitive string

**Signature**

```ts
declare const String: StringConstructor
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L42)

Since v4.0.0