Package: `effect`<br />
Module: `Statement`<br />

## Statement.defaultEscape

Creates an identifier escaping function that wraps names in the given
delimiter, doubles delimiter characters, and escapes dots between identifier
parts.

**Signature**

```ts
declare const defaultEscape: (c: string) => (str: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L1081)

Since v4.0.0