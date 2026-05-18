Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.Class

Base constructor whose instances implement the standard `Pipeable.pipe`
method.

Extend or compose this constructor when defining a class that should support
Effect-style method chaining through `.pipe(...)`.

**Signature**

```ts
declare const Class: new () => Pipeable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pipeable.ts#L615)

Since v4.0.0