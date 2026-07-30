Package: `@effect/cli`<br />
Module: `Primitive`<br />

## Primitive.boolean

Represents a boolean value.

True values can be passed as one of: `["true", "1", "y", "yes" or "on"]`.
False value can be passed as one of: `["false", "o", "n", "no" or "off"]`.

**Signature**

```ts
declare const boolean: (defaultValue: Option<boolean>) => Primitive<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Primitive.ts#L89)

Since v1.0.0