Package: `effect`<br />
Module: `Model`<br />

## Model.Override

Marks a value as an explicit override for fields that otherwise use an
overrideable default.

**Signature**

```ts
declare const Override: <A>(value: A) => A & Brand<"Override">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Model.ts#L185)

Since v4.0.0