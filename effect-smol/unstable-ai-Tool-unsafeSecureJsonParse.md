Package: `effect`<br />
Module: `Tool`<br />

## Tool.unsafeSecureJsonParse

Parses JSON text while rejecting prototype-pollution keys.

**When to use**

Use when you need a JSON parser that throws for invalid JSON or unsafe
object shapes.

**Gotchas**

Invalid JSON throws through `JSON.parse`. Parsed objects containing an own
`__proto__` property or a dangerous `constructor.prototype` shape throw a
`SyntaxError`.

**Signature**

```ts
declare const unsafeSecureJsonParse: (text: string) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L2002)

Since v4.0.0